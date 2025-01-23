from matplotlib.collections import PathCollection
from matplotlib.patches import Rectangle, Wedge
from matplotlib.figure import Figure
import numpy as np

class Py2TypPlot:
    @staticmethod
    def escape_string(s: str) -> str:
        """
        将Python字符串转义为Typst字面量
        :param s: Python字符串
        :return: 转义后的Typst字符串
        """
        escape_map = {
            '\\': '\\\\',
            '"': '\\"',
            '\n': '\\n',
            '\t': '\\t',
            '\r': '\\r'
        }
        result = ''
        for char in s:
            result += escape_map.get(char, char)
        return result
    @staticmethod
    def convert_color(color):
        """Convert matplotlib color to typst color"""
        if isinstance(color, str):
            if len(color) == 7 and color.startswith('#'):
                color = tuple(int(color[i:i + 2], 16) for i in (1, 3, 5))
                return f"rgb({color[0]}, {color[1]}, {color[2]})"
            if color in ["r", "g", "b", "c", "m", "y", "k", "w"]:
                color_map = {
                    "r": (255, 0, 0),
                    "g": (0, 255, 0),
                    "b": (0, 0, 255),
                    "c": (0, 255, 255),
                    "m": (255, 0, 255),
                    "y": (255, 255, 0),
                    "k": (0, 0, 0),
                    "w": (255, 255, 255)
                }
                return f"rgb({color_map[color][0]}, {color_map[color][1]}, {color_map[color][2]})"
            return color
        if isinstance(color, (list, np.ndarray)):  # 处理 RGBA 格式
            # 将 0-1 范围转换为 0-255 范围
            rgba = tuple(int(c * 255) for c in color)
            return f"rgb({rgba[0]}, {rgba[1]}, {rgba[2]}, {rgba[3]})"
        if isinstance(color, tuple):
            rgba = tuple(int(c * 255) for c in color)
            return f"rgb({rgba[0]}, {rgba[1]}, {rgba[2]}, {rgba[3]})"
        return "black"
    @staticmethod
    def convert_linestyle(style):
        """Convert matplotlib linestyle to cetz dash pattern"""
        style_map = {
            '-': 'none',  # solid
            '--': '(4pt, 2pt)',  # dashed
            ':': '(1pt, 1pt)',   # dotted
            '-.': '(6pt, 2pt, 1pt, 2pt)',  # dash-dot
        }
        return style_map.get(style, 'none')
    @staticmethod
    def plot2typ(fig: Figure, num_precision: int = 2) -> str:
        """Convert matplotlib figure to cetz code"""
            # 获取figsize并转换为厘米(1英寸=2.54厘米)
        fig_width, fig_height = fig.get_size_inches()
        width_cm = fig_width * 2.54
        height_cm = fig_height * 2.54
        # 获取行列数
        try:
            gridspec = fig.gca().get_gridspec()
            if gridspec is not None:
                nrows, ncols = gridspec.get_geometry()
            else:
                # 如果没有gridspec,使用axes位置计算
                nrows = len(set(ax.get_position().bounds[1] for ax in fig.axes))
                ncols = len(set(ax.get_position().bounds[0] for ax in fig.axes))
                
            # 确保至少有一行一列
            nrows = max(1, nrows)
            ncols = max(1, ncols)
        except:
            # 默认值
            nrows = 1
            ncols = 1
        result = []
        # 添加画布设置

        result.append(
f"""{{
  let cell = block.with(width: auto, height: auto, inset: 0pt)
  grid(
  columns: {ncols},
  rows: auto,
  gutter: 5pt,"""
        )
                
        # 设置视图范围

        for ax in fig.axes:
            ax_x0, ax_y0, ax_width, ax_height = ax.get_position().bounds # 获取子图位置和大小
            ax_x0 *= fig_width
            ax_y0 *= fig_height
            ax_width *= fig_width
            ax_height *= fig_height
            ax_width_cm = ax_width * 2.54
            ax_height_cm = ax_height * 2.54
            ax_x0_cm = ax_x0 * 2.54
            ax_y0_cm = ax_y0 * 2.54
            real_ax_width = (ax_width_cm + 1)/2.54
            real_ax_height = (ax_height_cm + 1)/2.54
            print(ax_x0_cm, ax_y0_cm, ax_width_cm, ax_height_cm)
            ax_title = ax.get_title()
            if not ax_title:
                ax_title = "Figure"
            x_min, x_max = ax.get_xlim()
            y_min, y_max = ax.get_ylim()
            
            # 计算绘图区域的缩放比例
            scale_x = ax_width / (x_max - x_min)
            scale_y = ax_height / (y_max - y_min)

            scale_x_l = 1 / scale_x
            scale_y_l = 1 / scale_y
            x_ticks = ax.get_xticks()
            y_ticks = ax.get_yticks()
            
            use_rect_border = False
            border_str = ""
            if len(x_ticks) > 0 and len(y_ticks) > 0:
                use_rect_border = True
                border_str = f"cetz.draw.rect(({x_min * scale_x}, {y_min * scale_y}), ({x_max * scale_x}, {y_max * scale_y}), stroke: black)"
            
            result.append(
f"""    cell[#{{
    {{figure(caption: figure.caption(position: top)[{ax_title}])[#context{{
      cetz.canvas({{
        cetz.draw.set-viewport(({ax_x0_cm - 1}cm, {ax_y0_cm - 1}cm), ({ax_width_cm + ax_x0_cm}cm, {ax_height_cm + ax_y0_cm}cm), bounds: ({real_ax_width}, {real_ax_height}))
        {border_str}
        {{
          let x-max-text-width = 0"""
                )



            
            for x in x_ticks:
                if x_min <= x <= x_max:
                    x = round(x, num_precision)
                    result.append(f"          cetz.draw.line(({x * scale_x}, {y_min * scale_y}), ({x * scale_x}, {(y_min-0.05 * scale_y_l) * scale_y}), stroke: black)")
                    result.append(f"          cetz.draw.content(({x * scale_x}, {(y_min-0.2 * scale_y_l) * scale_y}), ${x}$)")
                    
            for y in y_ticks:
                if y_min <= y <= y_max:
                    y = round(y, num_precision)
                    result.append(f"          cetz.draw.line(({x_min * scale_x}, {y * scale_y}), ({(x_min-0.05 * scale_x_l) * scale_x}, {y * scale_y}), stroke: black)")
                    result.append(f"          let text-width = measure(${y}$).width.cm() / {width_cm} * 2.54")
                    result.append("          x-max-text-width = calc.max(x-max-text-width, text-width)")
                    result.append(f"          cetz.draw.content(({(x_min-0.1 * scale_x_l) * scale_x} - text-width, {y * scale_y}), ${y}$)")

            # 添加轴标题
            if ax.get_xlabel():
                result.append(f"          cetz.draw.content(({(x_min+x_max)/2 * scale_x}, {(y_min-0.5 * scale_y_l) * scale_y}), [{ax.get_xlabel()}])")
            if ax.get_ylabel():
                result.append(f"          cetz.draw.content(({(x_min-0.5 * scale_x_l) * scale_x} - x-max-text-width, {(y_min+y_max)/2 * scale_y}), rotate(-90deg)[{ax.get_ylabel()}])")

            result.append("        }")
            # 添加网格线
            if len(ax.xaxis.get_gridlines()) > 0:
                for x in x_ticks:
                    if x_min <= x <= x_max:
                        result.append(f"        cetz.draw.line(({x * scale_x}, {y_min * scale_y}), ({x * scale_x}, {y_max * scale_y}), stroke: (gray + 0.2pt))")
                for y in y_ticks:
                    if y_min <= y <= y_max:
                        result.append(f"        cetz.draw.line(({x_min * scale_x}, {y * scale_y}), ({x_max * scale_x}, {y * scale_y}), stroke: (gray + 0.2pt))")    
            
            # 绘制线条
            # 收集所有终点标签信息
            labels_info = []
            for line in ax.lines:
                x_data = line.get_xdata()
                y_data = line.get_ydata()
                color = Py2TypPlot.convert_color(line.get_color())
                linestyle = Py2TypPlot.convert_linestyle(line.get_linestyle())
                linewidth = line.get_linewidth()
                label = line.get_label()
                points = [f"({x * scale_x}, {y * scale_y})" for x, y in zip(x_data, y_data)]
                if len(points) == 1:
                    result.append(f"          let points = ({points[0]},)")
                else:
                    result.append(f"          let points = ({', '.join(points)})")
                result.append(f"          cetz.draw.line(..points, stroke: (paint: {color}, dash: {linestyle}, thickness: {linewidth}pt))")
                marker = line.get_marker()
                if marker != 'None':
                    if marker == 'o':
                        if len(points) == 1:
                            result.append(f"          cetz.draw.circle({points[0]}, radius: 1pt, fill: {color}, stroke: none)")
                        elif len(points) > 1:
                            result.append(f"          range(points.len()).map(i => cetz.draw.circle(points.at(i), radius: 1pt, fill: {color}, stroke: none)).join()")
                    elif marker == 'x':
                        result.append("          {")
                        result.append(f"          let marker = [#box(width: 1cm,height: 1cm)[#align(center + horizon)[#text(fill: {color}, size: 0.5em)[✖]]]]")
                        result.append(f"          range(points.len()).map(i => cetz.draw.content((points.at(i).at(0),points.at(i).at(1)), stroke: {color}, marker)).join()")
                        result.append("          }")
                    elif marker == '+':
                        result.append("          {")
                        result.append(f"          let marker = [#box(width: 1cm,height: 1cm)[#align(center + horizon)[#text(fill: {color}, size: 0.5em)[➕]]]]")
                        result.append(f"          range(points.len()).map(i => cetz.draw.content((points.at(i).at(0),points.at(i).at(1)), stroke: {color}, marker)).join()")
                        result.append("          }")
                    else:
                        result.append(f"          cetz.draw.content({points[-1]}, stroke: {color}, marker: {marker})")
                    
                if label:
                    labels_info.append({
                        'label': label,
                        'linestyle': linestyle,
                        'color': color,
                        'marker': marker,
                        'type': 'line'
                    })
            

            # 绘制散点
            for collection in ax.collections:
                if isinstance(collection, PathCollection):
                    offsets = collection.get_offsets()
                    
                    # 获取原始颜色数据和colormap
                    raw_colors = collection.get_array()
                    cmap = collection.get_cmap()
                    norm = collection.norm
                    
                    if raw_colors is not None and cmap is not None:
                        # 手动执行颜色映射
                        mapped_colors = cmap(norm(raw_colors))
                    else:
                        # fallback到face colors
                        mapped_colors = collection.get_facecolors()
                        
                    edgecolors = collection.get_edgecolors()
                    
                    for i, (x, y) in enumerate(offsets):
                        color = Py2TypPlot.convert_color(mapped_colors[i] if len(mapped_colors) > i else mapped_colors[0])
                        edgecolor = Py2TypPlot.convert_color(edgecolors[i] if len(edgecolors) > i else edgecolors[0])
                        size = collection.get_sizes()[i] if len(collection.get_sizes()) > i else collection.get_sizes()[0]
                        size /= 36
                        result.append(f"        cetz.draw.circle(({x * scale_x}, {y * scale_y}), radius: {size}pt, fill: {color}, stroke: {edgecolor})")            # 绘制条形图
                    
                    labels = collection.get_label()
                    if labels and labels != '_child0' and labels != '_collection0':
                        # 获取散点图样式信息
                        color = Py2TypPlot.convert_color(mapped_colors[0])
                        edgecolor = Py2TypPlot.convert_color(edgecolors[0])
                        labels_info.append({
                            'label': labels,
                            'linestyle': 'none',
                            'marker': 'circle',  # 散点图用圆点标记
                            'color': color,      # 保存颜色信息用于图例
                            'stroke': edgecolor,
                            'type': 'scatter'    # 标记为散点类型
                        })

            # 绘制图例
            if labels_info:
                legend_y = y_max * scale_y - 0.05
                legend_height = len(labels_info) * 0.3
                
                # 统计最大文本大小
                labels = [f"[{info['label']}]" for info in labels_info]
                
                if len(labels) == 1:
                    result.append(f"          let labels = ({labels[0]},)")
                else:
                    result.append(f"          let labels = ({', '.join(labels)})")
                result.append("          let x-max-text-width = labels.map(label => measure(label).width.cm() / 2.54).sorted().last()")
                
                # 绘制图例背景
                result.append(f"""          cetz.draw.rect(
                        ({x_max * scale_x - 0.55} - x-max-text-width, {legend_y}),
                        ({x_max * scale_x - 0.05}, {legend_y - legend_height}),
                        fill: rgb(255, 255, 255, 200),
                        stroke: gray
                    )""")
                
                # 绘制图例项
                for i, info in enumerate(labels_info):
                    y_pos = legend_y - (i * 0.3) - 0.15
                    
                    # 根据类型绘制不同的图例标记
                    if info['type'] == 'line':
                        # 绘制线条
                        result.append(f"""          cetz.draw.line(
                            ({x_max * scale_x - 0.45} - x-max-text-width, {y_pos}),
                            ({x_max * scale_x - 0.25} - x-max-text-width, {y_pos}),
                            stroke: (paint: {info['color']}, dash: {info['linestyle']}, thickness: 1pt)
                        )""")
                        
                        # 如果有标记，绘制标记
                        if info['marker'] != 'None':
                            if info['marker'] == 'o':
                                result.append(f"""          cetz.draw.circle(
                                    ({x_max * scale_x - 0.35} - x-max-text-width, {y_pos}),
                                    radius: 1pt,
                                    fill: {info['color']},
                                    stroke: none
                                )""")
                            elif info['marker'] in ['x', '+']:
                                marker_map = {
                                    'x': '✖',
                                    '+': '➕'
                                }
                                result.append(f"""          cetz.draw.content(
                                    ({x_max * scale_x - 0.35} - x-max-text-width, {y_pos}),
                                    [#box(width: 1cm,height: 1cm)[#align(center + horizon)[#text(fill: {info['color']}, size: 0.5em)[{marker_map[info['marker']]}]]]]
                                )""")
                    
                    elif info['type'] == 'scatter':
                        # 绘制散点标记
                        result.append(f"""          cetz.draw.circle(
                            ({x_max * scale_x - 0.35} - x-max-text-width, {y_pos}),
                            radius: 1pt,
                            fill: {info['color']},
                            stroke: {info['stroke']}
                        )""")
                    
                    # 绘制标签文本
                    result.append(f"""          cetz.draw.content(
                        ({x_max * scale_x - 0.15} - x-max-text-width, {y_pos}),
                        [{info['label']}],
                        anchor: "west"
                    )""")


            for patch in ax.patches:
                if isinstance(patch, Rectangle):
                    x = patch.get_x() * scale_x
                    y = patch.get_y() * scale_y
                    width = patch.get_width() * scale_x
                    height = patch.get_height() * scale_y
                    color = Py2TypPlot.convert_color(patch.get_facecolor())
                    result.append(f"        cetz.draw.rect(({x}, {y}), ({x + width}, {y + height}), fill: {color}, stroke: black)")
                    
                    # 如果有标签,在条形上方显示
                    label = patch.get_label()
                    if label and label != '_nolegend_':
                        result.append(f"        cetz.draw.content(({x + width/2}, {y + height + 0.1}), [{label}])")
                if isinstance(patch, Wedge):
                    center = (patch.r * np.cos(patch.theta1 / 180 * np.pi) * min(scale_x, scale_y), patch.r * np.sin(patch.theta1 / 180 * np.pi) * min(scale_x, scale_y))  # 饼图中心
                    theta1, theta2 = patch.theta1, patch.theta2
                    color = Py2TypPlot.convert_color(patch.get_facecolor())
                    radius = patch.r * min(scale_x, scale_y)
                    label = patch.get_label()
                    percent = (theta2 - theta1) / 360 * 100
                    percent_position = (patch.r / 2 * np.cos((theta1 + theta2) / 2 / 180 * np.pi) * min(scale_x, scale_y), patch.r / 2 * np.sin((theta1 + theta2) / 2 / 180 * np.pi) * min(scale_x, scale_y))
                    title_position = (patch.r * 1.3 * np.cos((theta1 + theta2) / 2 / 180 * np.pi) * min(scale_x, scale_y), patch.r * 1.2 * np.sin((theta1 + theta2) / 2 / 180 * np.pi) * min(scale_x, scale_y))
                    result.append(f"           cetz.draw.arc({center}, radius: {radius}, start: {theta1}deg, stop: {theta2}deg, fill: {color}, mode:\"PIE\", stroke: none)")
                    result.append(f"           cetz.draw.content({percent_position}, [{round(percent, num_precision)}%])")
                    if label:
                        result.append(f"           cetz.draw.content({title_position}, [{label}])")

            result.append(
"""      })}]
    }}],"""
            )

        result.append("  )\n}")
        
        return "\n".join(result)