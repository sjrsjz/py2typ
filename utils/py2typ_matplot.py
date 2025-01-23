from matplotlib.collections import PathCollection
import matplotlib.pyplot as plt
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
            rgb = tuple(int(c * 255) for c in color[:3])
            return f"rgb({rgb[0]}, {rgb[1]}, {rgb[2]})"
        if isinstance(color, tuple):
            return f"rgb({color[0]}, {color[1]}, {color[2]})"
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
    def plot2typ(fig: Figure):
        """Convert matplotlib figure to cetz code"""
            # 获取figsize并转换为厘米(1英寸=2.54厘米)
        fig_width, fig_height = fig.get_size_inches()
        width_cm = fig_width * 2.54
        height_cm = fig_height * 2.54
        
        result = []
        # 添加画布设置
        fig_title = fig.gca().get_title()
        if not fig_title:
            fig_title = "Figure"
        result.append(f"{{figure(caption: [{fig_title}])[#{{")
        result.append("  cetz.canvas({")
        # 设置视图范围
        result.append(f"  cetz.draw.set-viewport((-1cm, -1cm), ({width_cm}cm, {height_cm}cm), bounds: ({fig_width}, {fig_height}))")
        
        for ax in fig.axes:
            x_min, x_max = ax.get_xlim()
            y_min, y_max = ax.get_ylim()
            
            # 计算绘图区域的缩放比例
            scale_x = fig_width / (x_max - x_min)
            scale_y = fig_height / (y_max - y_min)

            scale_x_l = 1 / scale_x
            scale_y_l = 1 / scale_y

            
            # 添加坐标轴和边框
            result.append("  // 绘制坐标轴和边框")
            result.append(f"  cetz.draw.rect(({x_min * scale_x}, {y_min * scale_y}), ({x_max * scale_x}, {y_max * scale_y}), stroke: black)")
            
            # 添加刻度线和标签
            result.append("  // 绘制刻度线和标签")
            x_ticks = ax.get_xticks()
            y_ticks = ax.get_yticks()
            
            for x in x_ticks:
                if x_min <= x <= x_max:
                    result.append(f"  cetz.draw.line(({x * scale_x}, {y_min * scale_y}), ({x * scale_x}, {(y_min-0.05 * scale_y_l) * scale_y}), stroke: black)")
                    result.append(f"  cetz.draw.content(({x * scale_x}, {(y_min-0.2 * scale_y_l) * scale_y}), ${x}$)")
                    
            for y in y_ticks:
                if y_min <= y <= y_max:
                    result.append(f"  cetz.draw.line(({x_min * scale_x}, {y * scale_y}), ({(x_min-0.05 * scale_x_l) * scale_x}, {y * scale_y}), stroke: black)")
                    result.append(f"  cetz.draw.content(({(x_min-0.2 * scale_x_l) * scale_x}, {y * scale_y}), ${y}$)")
            
            # 添加网格线(使用get_gridlines检查)
            if len(ax.xaxis.get_gridlines()) > 0:
                result.append("  // 绘制网格线")
                for x in x_ticks:
                    if x_min <= x <= x_max:
                        result.append(f"  cetz.draw.line(({x * scale_x}, {y_min * scale_y}), ({x * scale_x}, {y_max * scale_y}), stroke: (gray + 0.2pt))")
                for y in y_ticks:
                    if y_min <= y <= y_max:
                        result.append(f"  cetz.draw.line(({x_min * scale_x}, {y * scale_y}), ({x_max * scale_x}, {y * scale_y}), stroke: (gray + 0.2pt))")    
            # 添加轴标题
            if ax.get_xlabel():
                result.append(f"  cetz.draw.content(({(x_min+x_max)/2 * scale_x}, {(y_min-0.5 * scale_y_l) * scale_y}), [{ax.get_xlabel()}])")
            if ax.get_ylabel():
                result.append(f"  cetz.draw.content(({(x_min-0.5 * scale_x_l) * scale_x}, {(y_min+y_max)/2 * scale_y}), rotate(-90deg)[{ax.get_ylabel()}])")
            
            # 绘制线条
            for line in ax.lines:
                x_data = line.get_xdata()
                y_data = line.get_ydata()
                color = Py2TypPlot.convert_color(line.get_color())
                linestyle = Py2TypPlot.convert_linestyle(line.get_linestyle())
                points = [f"({x * scale_x}, {y * scale_y})" for x, y in zip(x_data, y_data)]
                result.append(f"  cetz.draw.line({', '.join(points)}, stroke: (paint: {color}, dash: {linestyle}))")
            
            # 绘制散点
            for collection in ax.collections:
                if isinstance(collection, PathCollection):
                    offsets = collection.get_offsets()
                    colors = collection.get_facecolors()
                    for i, (x, y) in enumerate(offsets):
                        color = Py2TypPlot.convert_color(colors[i] if len(colors) > i else colors[0])
                        result.append(f"  cetz.draw.circle(({x * scale_x}, {y * scale_y}), radius: 1pt, fill: {color}, stroke: none)")

        result.append("  })")
        result.append("}]}")
        
        return "\n".join(result)