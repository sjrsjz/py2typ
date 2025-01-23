#import "@preview/cetz:0.3.1" as cetz
#let obj = (a: 1, b: 2, c: (d: 3, e: 4))
#let obj2 = (value: 1, name: "test")
#let obj3 = (1,)
#let obj4 = (1, 2, 3, 4)
#let plot = {
  let cell = block.with(width: auto, height: auto, inset: 0pt)
  grid(
  columns: 2,
  rows: auto,
  gutter: 5pt,
    cell[#{
    {figure(caption: figure.caption(position: top)[折线图])[#context{
      cetz.canvas({
        cetz.draw.set-viewport((0.7042694444444446cm, 9.953044444444444cm), (6.2552853558917425cm, 19.37173333333333cm), bounds: (2.1854393352154715, 3.7081452318460193))
        cetz.draw.rect((-0.08144266126426804, -1.6432899028502994), (1.7102958865496287, 1.6711545415941453), stroke: black)
        {
          let x-max-text-width = 0
          cetz.draw.line((0.0, -1.6432899028502994), (0.0, -1.6932899028502995), stroke: black)
          cetz.draw.content((0.0, -1.8432899028502994), $0.0$)
          cetz.draw.line((0.8144266126426803, -1.6432899028502994), (0.8144266126426803, -1.6932899028502995), stroke: black)
          cetz.draw.content((0.8144266126426803, -1.8432899028502994), $5.0$)
          cetz.draw.line((1.6288532252853607, -1.6432899028502994), (1.6288532252853607, -1.6932899028502995), stroke: black)
          cetz.draw.content((1.6288532252853607, -1.8432899028502994), $10.0$)
          cetz.draw.line((-0.08144266126426804, -1.5204979759375796), (-0.13144266126426804, -1.5204979759375796), stroke: black)
          let text-width = measure($-1.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18144266126426806 - text-width, -1.5204979759375796), $-1.0$)
          cetz.draw.line((-0.08144266126426804, -1.1403734819531848), (-0.13144266126426804, -1.1403734819531848), stroke: black)
          let text-width = measure($-0.75$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18144266126426806 - text-width, -1.1403734819531848), $-0.75$)
          cetz.draw.line((-0.08144266126426804, -0.7602489879687898), (-0.13144266126426804, -0.7602489879687898), stroke: black)
          let text-width = measure($-0.5$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18144266126426806 - text-width, -0.7602489879687898), $-0.5$)
          cetz.draw.line((-0.08144266126426804, -0.3801244939843949), (-0.13144266126426804, -0.3801244939843949), stroke: black)
          let text-width = measure($-0.25$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18144266126426806 - text-width, -0.3801244939843949), $-0.25$)
          cetz.draw.line((-0.08144266126426804, 0.0), (-0.13144266126426804, 0.0), stroke: black)
          let text-width = measure($0.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18144266126426806 - text-width, 0.0), $0.0$)
          cetz.draw.line((-0.08144266126426804, 0.3801244939843949), (-0.13144266126426804, 0.3801244939843949), stroke: black)
          let text-width = measure($0.25$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18144266126426806 - text-width, 0.3801244939843949), $0.25$)
          cetz.draw.line((-0.08144266126426804, 0.7602489879687898), (-0.13144266126426804, 0.7602489879687898), stroke: black)
          let text-width = measure($0.5$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18144266126426806 - text-width, 0.7602489879687898), $0.5$)
          cetz.draw.line((-0.08144266126426804, 1.1403734819531848), (-0.13144266126426804, 1.1403734819531848), stroke: black)
          let text-width = measure($0.75$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18144266126426806 - text-width, 1.1403734819531848), $0.75$)
          cetz.draw.line((-0.08144266126426804, 1.5204979759375796), (-0.13144266126426804, 1.5204979759375796), stroke: black)
          let text-width = measure($1.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18144266126426806 - text-width, 1.5204979759375796), $1.0$)
        }
        cetz.draw.line((0.0, -1.6432899028502994), (0.0, 1.6711545415941453), stroke: (gray + 0.2pt))
        cetz.draw.line((0.8144266126426803, -1.6432899028502994), (0.8144266126426803, 1.6711545415941453), stroke: (gray + 0.2pt))
        cetz.draw.line((1.6288532252853607, -1.6432899028502994), (1.6288532252853607, 1.6711545415941453), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08144266126426804, -1.5204979759375796), (1.7102958865496287, -1.5204979759375796), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08144266126426804, -1.1403734819531848), (1.7102958865496287, -1.1403734819531848), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08144266126426804, -0.7602489879687898), (1.7102958865496287, -0.7602489879687898), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08144266126426804, -0.3801244939843949), (1.7102958865496287, -0.3801244939843949), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08144266126426804, 0.0), (1.7102958865496287, 0.0), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08144266126426804, 0.3801244939843949), (1.7102958865496287, 0.3801244939843949), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08144266126426804, 0.7602489879687898), (1.7102958865496287, 0.7602489879687898), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08144266126426804, 1.1403734819531848), (1.7102958865496287, 1.1403734819531848), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08144266126426804, 1.5204979759375796), (1.7102958865496287, 1.5204979759375796), stroke: (gray + 0.2pt))
          let points = ((0.0, 0.0), (0.18098369169837342, 1.362658427717093), (0.36196738339674683, 1.209130487128513), (0.5429510750951203, -0.28975820183072337), (0.7239347667934937, -1.4662422244521696), (0.904918458491867, -1.0112855073183173), (1.0859021501902406, 0.5688961887780947), (1.266885841888614, 1.5160853249917914), (1.4478695335869873, 0.7763749006223818), (1.6288532252853607, -0.8271829979746003))
          cetz.draw.line(..points, stroke: (paint: rgb(255, 0, 0), dash: (4pt, 2pt), thickness: 1.5pt))
          range(points.len()).map(i => cetz.draw.circle(points.at(i), radius: 1pt, fill: rgb(255, 0, 0), stroke: none)).join()
          let points = ((0.0, 1.5204979759375796), (0.18098369169837342, 0.6745932879905168), (0.36196738339674683, -0.921909735238023), (0.5429510750951203, -1.4926333371937337), (0.7239347667934937, -0.40255165390770653), (0.904918458491867, 1.1354363555559641), (1.0859021501902406, 1.4100607154388902), (1.266885841888614, 0.11575570039877572), (1.4478695335869873, -1.3073469732683298), (1.6288532252853607, -1.275806561627596))
          cetz.draw.line(..points, stroke: (paint: rgb(0, 0, 255), dash: (1pt, 1pt), thickness: 1.5pt))
          {
          let marker = [#box(width: 1cm,height: 1cm)[#align(center + horizon)[#text(fill: rgb(0, 0, 255), size: 0.5em)[✖]]]]
          range(points.len()).map(i => cetz.draw.content((points.at(i).at(0),points.at(i).at(1)), stroke: rgb(0, 0, 255), marker)).join()
          }
            cetz.draw.content((1.6288532252853607, -1.275806561627596), [$cos(x)$])
            cetz.draw.content((1.6288532252853607, -0.7271829979746003), [$sin(x)$])
      })}]
    }}],
    cell[#{
    {figure(caption: figure.caption(position: top)[条形图])[#context{
      cetz.canvas({
        cetz.draw.set-viewport((6.5630277601102955cm, 9.953044444444444cm), (12.114043671557594cm, 19.37173333333333cm), bounds: (2.185439335215472, 3.7081452318460193))
        cetz.draw.rect((-0.1417705584970592, 0.0), (1.6499679893168377, 3.3144444444444443), stroke: black)
        {
          let x-max-text-width = 0
          cetz.draw.line((0.0, 0.0), (0.0, -0.05), stroke: black)
          cetz.draw.content((0.0, -0.2), $0.0$)
          cetz.draw.line((0.7540987154098893, 0.0), (0.7540987154098893, -0.05), stroke: black)
          cetz.draw.content((0.7540987154098893, -0.2), $5.0$)
          cetz.draw.line((1.5081974308197785, 0.0), (1.5081974308197785, -0.05), stroke: black)
          cetz.draw.content((1.5081974308197785, -0.2), $10.0$)
          cetz.draw.line((-0.1417705584970592, 0.0), (-0.19177055849705918, 0.0), stroke: black)
          let text-width = measure($0.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2417705584970592 - text-width, 0.0), $0.0$)
          cetz.draw.line((-0.1417705584970592, 0.7191709438360834), (-0.19177055849705918, 0.7191709438360834), stroke: black)
          let text-width = measure($5.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2417705584970592 - text-width, 0.7191709438360834), $5.0$)
          cetz.draw.line((-0.1417705584970592, 1.4383418876721668), (-0.19177055849705918, 1.4383418876721668), stroke: black)
          let text-width = measure($10.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2417705584970592 - text-width, 1.4383418876721668), $10.0$)
          cetz.draw.line((-0.1417705584970592, 2.1575128315082504), (-0.19177055849705918, 2.1575128315082504), stroke: black)
          let text-width = measure($15.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2417705584970592 - text-width, 2.1575128315082504), $15.0$)
          cetz.draw.line((-0.1417705584970592, 2.8766837753443335), (-0.19177055849705918, 2.8766837753443335), stroke: black)
          let text-width = measure($20.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2417705584970592 - text-width, 2.8766837753443335), $20.0$)
        }
        cetz.draw.line((0.0, 0.0), (0.0, 3.3144444444444443), stroke: (gray + 0.2pt))
        cetz.draw.line((0.7540987154098893, 0.0), (0.7540987154098893, 3.3144444444444443), stroke: (gray + 0.2pt))
        cetz.draw.line((1.5081974308197785, 0.0), (1.5081974308197785, 3.3144444444444443), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1417705584970592, 0.0), (1.6499679893168377, 0.0), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1417705584970592, 0.7191709438360834), (1.6499679893168377, 0.7191709438360834), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1417705584970592, 1.4383418876721668), (1.6499679893168377, 1.4383418876721668), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1417705584970592, 2.1575128315082504), (1.6499679893168377, 2.1575128315082504), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1417705584970592, 2.8766837753443335), (1.6499679893168377, 2.8766837753443335), stroke: (gray + 0.2pt))
        cetz.draw.rect((-0.06032789723279114, 0.0), (0.06032789723279114, 0.0), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((0.10724959508051758, 0.0), (0.22790538954609985, 3.1566137566137566), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((0.27482708739382633, 0.0), (0.3954828818594086, 2.078270227790439), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((0.44240457970713504, 0.0), (0.5630603741727174, 1.0262279786378266), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((0.6099820720204437, 0.0), (0.730637866486026, 0.4504360726131381), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((0.7775595643337524, 0.0), (0.8982153587993347, 0.18535049569997214), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((0.9451370566470612, 0.0), (1.0657928511126435, 0.07321930016538018), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((1.11271454896037, 0.0), (1.2333703434259524, 0.028120493551086267), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((1.2802920412736787, 0.0), (1.4009478357392608, 0.010579507760817179), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((1.4478695335869873, 0.0), (1.5685253280525697, 0.003918037240485376), fill: rgb(0, 127, 0, 255), stroke: black)
      })}]
    }}],
    cell[#{
    {figure(caption: figure.caption(position: top)[饼图])[#context{
      cetz.canvas({
        cetz.draw.set-viewport((0.7042694444444446cm, 1.9173809331652412cm), (6.2552853558917425cm, 7.468396844612538cm), bounds: (2.1854393352154715, 2.1854393352154715))
        
        {
          let x-max-text-width = 0
        }
           cetz.draw.arc((0.7166954191255587, 0.0), radius: 0.7166954191255587, start: 0.0deg, stop: 54.00000214576721deg, fill: rgb(31, 119, 180, 255), mode:"PIE", stroke: none)
           cetz.draw.content((0.31929014410203366, 0.16268646172374834), [15.0%])
           cetz.draw.content((0.8301543746652876, 0.390447508136996), [A类])
           cetz.draw.arc((0.42126297603295537, 0.5798187896398477), radius: 0.7166954191255587, start: 54.00000214576721deg, stop: 162.00000643730164deg, fill: rgb(255, 127, 14, 255), mode:"PIE", stroke: none)
           cetz.draw.content((-0.11073555767730385, 0.3408089159848764), [30.0%])
           cetz.draw.content((-0.28791244996099, 0.8179413983637034), [B类])
           cetz.draw.arc((-0.6816178734409856, 0.22147098771926954), radius: 0.7166954191255587, start: 162.00000643730164deg, stop: 324.0000021457672deg, fill: rgb(44, 160, 44, 255), mode:"PIE", stroke: none)
           cetz.draw.content((-0.16268643182964682, -0.3192901593338381), [45.0%])
           cetz.draw.content((-0.4229847227570817, -0.7662963824012115), [C类])
           cetz.draw.arc((0.5798187896398476, -0.42126297603295537), radius: 0.7166954191255587, start: 324.0000021457672deg, stop: 360.000002682209deg, fill: rgb(214, 39, 40, 255), mode:"PIE", stroke: none)
           cetz.draw.content((0.34080892894463805, -0.11073551779126109), [10.0%])
           cetz.draw.content((0.8861032152560591, -0.2657652426990266), [D类])
      })}]
    }}],
    cell[#{
    {figure(caption: figure.caption(position: top)[散点图])[#context{
      cetz.canvas({
        cetz.draw.set-viewport((6.5630277601102955cm, -0.016455555555555224cm), (12.114043671557594cm, 9.402233333333333cm), bounds: (2.185439335215472, 3.7081452318460193))
        cetz.draw.rect((-0.04612376911969323, -0.13370174550235045), (1.7456147786942038, 3.1807426989420944), stroke: black)
        {
          let x-max-text-width = 0
          cetz.draw.line((0.0, -0.13370174550235045), (0.0, -0.18370174550235044), stroke: black)
          cetz.draw.content((0.0, -0.33370174550235043), $0.0$)
          cetz.draw.line((0.8579004088474739, -0.13370174550235045), (0.8579004088474739, -0.18370174550235044), stroke: black)
          cetz.draw.content((0.8579004088474739, -0.33370174550235043), $0.5$)
          cetz.draw.line((1.7158008176949477, -0.13370174550235045), (1.7158008176949477, -0.18370174550235044), stroke: black)
          cetz.draw.content((1.7158008176949477, -0.33370174550235043), $1.0$)
          cetz.draw.line((-0.04612376911969323, 0.0), (-0.09612376911969323, 0.0), stroke: black)
          let text-width = measure($0.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.14612376911969324 - text-width, 0.0), $0.0$)
          cetz.draw.line((-0.04612376911969323, 0.6140695597254785), (-0.09612376911969323, 0.6140695597254785), stroke: black)
          let text-width = measure($0.2$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.14612376911969324 - text-width, 0.6140695597254785), $0.2$)
          cetz.draw.line((-0.04612376911969323, 1.228139119450957), (-0.09612376911969323, 1.228139119450957), stroke: black)
          let text-width = measure($0.4$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.14612376911969324 - text-width, 1.228139119450957), $0.4$)
          cetz.draw.line((-0.04612376911969323, 1.8422086791764352), (-0.09612376911969323, 1.8422086791764352), stroke: black)
          let text-width = measure($0.6$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.14612376911969324 - text-width, 1.8422086791764352), $0.6$)
          cetz.draw.line((-0.04612376911969323, 2.456278238901914), (-0.09612376911969323, 2.456278238901914), stroke: black)
          let text-width = measure($0.8$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.14612376911969324 - text-width, 2.456278238901914), $0.8$)
          cetz.draw.line((-0.04612376911969323, 3.070347798627392), (-0.09612376911969323, 3.070347798627392), stroke: black)
          let text-width = measure($1.0$).width.cm() / 12.7 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.14612376911969324 - text-width, 3.070347798627392), $1.0$)
        }
        cetz.draw.line((0.0, -0.13370174550235045), (0.0, 3.1807426989420944), stroke: (gray + 0.2pt))
        cetz.draw.line((0.8579004088474739, -0.13370174550235045), (0.8579004088474739, 3.1807426989420944), stroke: (gray + 0.2pt))
        cetz.draw.line((1.7158008176949477, -0.13370174550235045), (1.7158008176949477, 3.1807426989420944), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.04612376911969323, 0.0), (1.7456147786942038, 0.0), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.04612376911969323, 0.6140695597254785), (1.7456147786942038, 0.6140695597254785), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.04612376911969323, 1.228139119450957), (1.7456147786942038, 1.228139119450957), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.04612376911969323, 1.8422086791764356), (1.7456147786942038, 1.8422086791764356), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.04612376911969323, 2.456278238901914), (1.7456147786942038, 2.456278238901914), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.04612376911969323, 3.070347798627393), (1.7456147786942038, 3.070347798627393), stroke: (gray + 0.2pt))
        cetz.draw.circle((0.6426362421778675, 2.976962027439872), radius: 1.0pt, fill: rgb(70, 9, 92, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.6312363843324194, 2.3799273578506335), radius: 1.0pt, fill: rgb(48, 180, 122, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.255955803907757, 2.884588507044373), radius: 1.0pt, fill: rgb(50, 99, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.0271787167052933, 2.7474311855371134), radius: 1.0pt, fill: rgb(31, 149, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.2676969108467866, 1.8357608837419797), radius: 1.0pt, fill: rgb(210, 225, 27, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.26765552554878763, 2.830474528114538), radius: 1.0pt, fill: rgb(58, 82, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.09965990925287285, 0.271702758870141), radius: 1.0pt, fill: rgb(39, 124, 142, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.486185739188492, 0.6017355501973175), radius: 1.0pt, fill: rgb(107, 205, 89, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.0313936286777057, 0.13886350694435562), radius: 1.0pt, fill: rgb(61, 75, 137, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.2149115079698243, 0.99887726488571), radius: 1.0pt, fill: rgb(72, 26, 108, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.03531889214457483, 1.1933744607745622), radius: 1.0pt, fill: rgb(53, 93, 140, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.6641721174299358, 0.8331359023666556), radius: 1.0pt, fill: rgb(69, 54, 129, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.4283057637695054, 2.5445123868645747), radius: 1.0pt, fill: rgb(225, 227, 24, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.36433161973040423, 1.0953567912666606), radius: 1.0pt, fill: rgb(141, 214, 68, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.3119754274113003, 0.8625666533771152), radius: 1.0pt, fill: rgb(47, 179, 123, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.31468560797546286, 1.6662657242486363), radius: 1.0pt, fill: rgb(186, 222, 39, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.5220190892473198, 0.43268638392453385), radius: 1.0pt, fill: rgb(139, 213, 70, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.9003775144852766, 2.463023733923706), radius: 1.0pt, fill: rgb(66, 62, 133, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.7411316161854017, 0.22889640470843944), radius: 1.0pt, fill: rgb(199, 224, 31, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.4996911968883969, 3.030086133285529), radius: 1.0pt, fill: rgb(30, 156, 137, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.0498176970736794, 2.3710600274115103), radius: 1.0pt, fill: rgb(141, 214, 68, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.23934368017019847, 0.6101262553511881), radius: 1.0pt, fill: rgb(202, 224, 30, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.5012620268419304, 0.016954820154215254), radius: 1.0pt, fill: rgb(49, 100, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.6286039502955445, 2.5037502017218487), radius: 1.0pt, fill: rgb(71, 38, 118, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.7825252518457122, 2.170297889626137), radius: 1.0pt, fill: rgb(61, 75, 137, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.3472055565925494, 2.238305553578235), radius: 1.0pt, fill: rgb(38, 128, 142, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.3426004386995565, 2.368068211093779), radius: 1.0pt, fill: rgb(149, 215, 63, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.8823238699169771, 0.22734283345189626), radius: 1.0pt, fill: rgb(178, 221, 44, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.0164654016678925, 1.1006144605192718), radius: 1.0pt, fill: rgb(68, 1, 84, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.07969965612723989, 0.3557583118420083), radius: 1.0pt, fill: rgb(31, 149, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.0424259536788438, 2.650027703624889), radius: 1.0pt, fill: rgb(39, 125, 142, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.2925854308593692, 1.9137420315935696), radius: 1.0pt, fill: rgb(61, 74, 137, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.11161557643650152, 1.0159720221764836), radius: 1.0pt, fill: rgb(71, 40, 120, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.628098580718179, 0.19514624088508134), radius: 1.0pt, fill: rgb(47, 105, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.6568322319417639, 0.9548238868917189), radius: 1.0pt, fill: rgb(236, 228, 26, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.3870488309206512, 0.9984258969351651), radius: 1.0pt, fill: rgb(49, 101, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.5226565542288095, 2.2401447235252196), radius: 1.0pt, fill: rgb(30, 151, 138, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.1675858930781476, 1.9575231786739253), radius: 1.0pt, fill: rgb(77, 194, 107, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.1740075863834476, 2.724051691083395), radius: 1.0pt, fill: rgb(44, 112, 142, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.7552140086688783, 1.4498640559499898), radius: 1.0pt, fill: rgb(253, 231, 36, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.20939330313671958, 0.36719592974516757), radius: 1.0pt, fill: rgb(248, 230, 33, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.849624947272575, 2.1899095623325855), radius: 1.0pt, fill: rgb(58, 82, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.0590038526488117, 2.3358746992495245), radius: 1.0pt, fill: rgb(31, 146, 140, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.560212689433473, 1.7233162079772546), radius: 1.0pt, fill: rgb(52, 95, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.4440149040323926, 2.3671373837874548), radius: 1.0pt, fill: rgb(54, 91, 140, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.136756277235687, 1.5161242222693074), radius: 1.0pt, fill: rgb(70, 11, 94, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.5348341192387834, 1.6049715919632737), radius: 1.0pt, fill: rgb(39, 173, 128, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.8923331359938812, 1.3126996245400864), radius: 1.0pt, fill: rgb(31, 147, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.9380459443394326, 0.07804555984176333), radius: 1.0pt, fill: rgb(71, 17, 99, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.31717342594525366, 0.33126420535966034), radius: 1.0pt, fill: rgb(54, 90, 140, 255), stroke: rgb(31, 119, 180, 127))
      })}]
    }}],
  )
}