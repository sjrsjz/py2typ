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
        cetz.draw.set-viewport((0.7042694444444446cm, 9.953044444444444cm), (10.159662891791527cm, 19.37173333333333cm), bounds: (3.722595845412237, 3.7081452318460193))
        cetz.draw.rect((-0.1513134117277574, -1.6448317626589795), (3.1775816462829054, 1.6696126817854648), stroke: black)
        {
          let x-max-text-width = 0
          cetz.draw.line((0.0, -1.6448317626589795), (0.0, -1.6948317626589797), stroke: black)
          cetz.draw.content((0.0, -1.8448317626589794), $0.0$)
          cetz.draw.line((0.6052536469110296, -1.6448317626589795), (0.6052536469110296, -1.6948317626589797), stroke: black)
          cetz.draw.content((0.6052536469110296, -1.8448317626589794), $2.0$)
          cetz.draw.line((1.2105072938220591, -1.6448317626589795), (1.2105072938220591, -1.6948317626589797), stroke: black)
          cetz.draw.content((1.2105072938220591, -1.8448317626589794), $4.0$)
          cetz.draw.line((1.8157609407330888, -1.6448317626589795), (1.8157609407330888, -1.6948317626589797), stroke: black)
          cetz.draw.content((1.8157609407330888, -1.8448317626589794), $6.0$)
          cetz.draw.line((2.4210145876441183, -1.6448317626589795), (2.4210145876441183, -1.6948317626589797), stroke: black)
          cetz.draw.content((2.4210145876441183, -1.8448317626589794), $8.0$)
          cetz.draw.line((3.0262682345551477, -1.6448317626589795), (3.0262682345551477, -1.6948317626589797), stroke: black)
          cetz.draw.content((3.0262682345551477, -1.8448317626589794), $10.0$)
          cetz.draw.line((-0.1513134117277574, -1.5189561161288991), (-0.2013134117277574, -1.5189561161288991), stroke: black)
          let text-width = measure($-1.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2513134117277574 - text-width, -1.5189561161288991), $-1.0$)
          cetz.draw.line((-0.1513134117277574, -1.1392170870966742), (-0.2013134117277574, -1.1392170870966742), stroke: black)
          let text-width = measure($-0.75$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2513134117277574 - text-width, -1.1392170870966742), $-0.75$)
          cetz.draw.line((-0.1513134117277574, -0.7594780580644496), (-0.2013134117277574, -0.7594780580644496), stroke: black)
          let text-width = measure($-0.5$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2513134117277574 - text-width, -0.7594780580644496), $-0.5$)
          cetz.draw.line((-0.1513134117277574, -0.3797390290322248), (-0.2013134117277574, -0.3797390290322248), stroke: black)
          let text-width = measure($-0.25$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2513134117277574 - text-width, -0.3797390290322248), $-0.25$)
          cetz.draw.line((-0.1513134117277574, 0.0), (-0.2013134117277574, 0.0), stroke: black)
          let text-width = measure($0.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2513134117277574 - text-width, 0.0), $0.0$)
          cetz.draw.line((-0.1513134117277574, 0.3797390290322248), (-0.2013134117277574, 0.3797390290322248), stroke: black)
          let text-width = measure($0.25$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2513134117277574 - text-width, 0.3797390290322248), $0.25$)
          cetz.draw.line((-0.1513134117277574, 0.7594780580644496), (-0.2013134117277574, 0.7594780580644496), stroke: black)
          let text-width = measure($0.5$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2513134117277574 - text-width, 0.7594780580644496), $0.5$)
          cetz.draw.line((-0.1513134117277574, 1.1392170870966742), (-0.2013134117277574, 1.1392170870966742), stroke: black)
          let text-width = measure($0.75$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2513134117277574 - text-width, 1.1392170870966742), $0.75$)
          cetz.draw.line((-0.1513134117277574, 1.5189561161288991), (-0.2013134117277574, 1.5189561161288991), stroke: black)
          let text-width = measure($1.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.2513134117277574 - text-width, 1.5189561161288991), $1.0$)
        }
        cetz.draw.line((0.0, -1.6448317626589795), (0.0, 1.6696126817854648), stroke: (gray + 0.2pt))
        cetz.draw.line((0.6052536469110296, -1.6448317626589795), (0.6052536469110296, 1.6696126817854648), stroke: (gray + 0.2pt))
        cetz.draw.line((1.2105072938220591, -1.6448317626589795), (1.2105072938220591, 1.6696126817854648), stroke: (gray + 0.2pt))
        cetz.draw.line((1.8157609407330888, -1.6448317626589795), (1.8157609407330888, 1.6696126817854648), stroke: (gray + 0.2pt))
        cetz.draw.line((2.4210145876441183, -1.6448317626589795), (2.4210145876441183, 1.6696126817854648), stroke: (gray + 0.2pt))
        cetz.draw.line((3.0262682345551477, -1.6448317626589795), (3.0262682345551477, 1.6696126817854648), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1513134117277574, -1.5189561161288991), (3.1775816462829054, -1.5189561161288991), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1513134117277574, -1.1392170870966742), (3.1775816462829054, -1.1392170870966742), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1513134117277574, -0.7594780580644496), (3.1775816462829054, -0.7594780580644496), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1513134117277574, -0.3797390290322248), (3.1775816462829054, -0.3797390290322248), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1513134117277574, 0.0), (3.1775816462829054, 0.0), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1513134117277574, 0.3797390290322248), (3.1775816462829054, 0.3797390290322248), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1513134117277574, 0.7594780580644496), (3.1775816462829054, 0.7594780580644496), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1513134117277574, 1.1392170870966742), (3.1775816462829054, 1.1392170870966742), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.1513134117277574, 1.5189561161288991), (3.1775816462829054, 1.5189561161288991), stroke: (gray + 0.2pt))
          let points = ((0.0, 0.0), (0.3362520260616831, 1.361276624981472), (0.6725040521233662, 1.2079043692835323), (1.0087560781850493, -0.2894643727479435), (1.3450081042467323, -1.4647553826467543), (1.6812601303084154, -1.0102600140236788), (2.0175121563700986, 0.5683193000333085), (2.353764182431782, 1.514547939828425), (2.6900162084934647, 0.7755876182486583), (3.0262682345551477, -0.8263441936886463))
          cetz.draw.line(..points, stroke: (paint: rgb(255, 0, 0), dash: (4pt, 2pt), thickness: 1.5pt))
          range(points.len()).map(i => cetz.draw.circle(points.at(i), radius: 1pt, fill: rgb(255, 0, 0), stroke: none)).join()
          let points = ((0.0, 1.5189561161288991), (0.3362520260616831, 0.6739092171831769), (0.6725040521233662, -0.9209748733766527), (1.0087560781850493, -1.4911197335006432), (1.3450081042467323, -0.40214344671118235), (1.6812601303084154, 1.1342849671886979), (2.0175121563700986, 1.4086308444496876), (2.353764182431782, 0.11563831841938803), (2.6900162084934647, -1.3060212590707563), (3.0262682345551477, -1.2745128309603049))
          cetz.draw.line(..points, stroke: (paint: rgb(0, 0, 255), dash: (1pt, 1pt), thickness: 1.5pt))
          {
          let marker = [#box(width: 1cm,height: 1cm)[#align(center + horizon)[#text(fill: rgb(0, 0, 255), size: 0.5em)[✖]]]]
          range(points.len()).map(i => cetz.draw.content((points.at(i).at(0),points.at(i).at(1)), stroke: rgb(0, 0, 255), marker)).join()
          }
        cetz.draw.circle((0.8605059023518572, -1.1012537455985238), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.0323772507989544, -0.3661717458518785), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.0124302109361822, -0.4415068345833673), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.5060900677583495, -1.3114585805834849), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.07853630945649867, -0.776860182327806), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.3907878293095397, -1.1696787981920407), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.7778335970044599, -0.7967689940696026), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.6867035451729757, -1.173602175262635), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.6125134175708821, -0.2739505757782743), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.9652669887601203, -0.4113916526968369), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.28397405409019394, -0.8755757713140133), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.5690358614260946, -0.546132009810014), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.7092281303356656, -1.2899606905030772), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.518530424843724, -0.2191380190556903), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.5404475691736312, -1.2002901060527644), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.01523242562209524, -0.08499677667130741), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.5658546799615096, -0.8752063031171736), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.8555330054349373, -0.01977316413775064), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.565476451260207, -0.060471084671030316), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.7544692709430418, -0.571244792625769), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.9401782218313297, -0.4258469190023704), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.9833642771413166, -0.8872530355785846), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.4362392854663915, -1.2168454039524172), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.1710324124761298, -0.05739209451627011), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.9882368425598782, -0.9044865247344004), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.11926912546184625, -1.45283352937701), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.6233205921950753, -0.30662690851455504), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.1005616324631022, -1.4941751970024137), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.5981641726409697, -1.3255057699957051), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.6207312316357514, -0.2942360099594155), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.983058232562813, -1.1443588328427654), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((3.0248537336214016, -1.4823381426677855), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.0852446881128155, -0.010894276689529483), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.1122759278050682, -0.9762293685008508), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.4043654519256276, -0.6923131486977331), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.6433006615665116, -1.3177778947279206), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.0591132158927041, -0.9925691726059375), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.1933705216344723, -1.38442776566701), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.087968444848901, -0.9898849788021238), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.5330117479848032, -1.093073578375128), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.355599797251299, -0.19821894189607475), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.3161696269523005, -0.8681346397557205), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((1.8550807361715547, -0.6787420249098186), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.8860776539483805, -0.8655445757405178), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.7975033494375464, -0.1153389915903987), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.05509919622080664, -0.599609416091143), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.8177645404809257, -0.639794046149121), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.28763233013887357, -1.0591654493052707), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((0.9784879242709005, -1.4665329924084036), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
        cetz.draw.circle((2.481969297434678, -0.3398123750309234), radius: 1.0pt, fill: rgb(0, 127, 0, 127), stroke: rgb(0, 127, 0, 127))
          let labels = ([$sin(x)$], [$cos(x)$], [scatter])
          let x-max-text-width = labels.map(label => measure(label).width.cm() / 2.54).sorted().last()
          cetz.draw.rect(
                        (2.6275816462829056 - x-max-text-width, 1.6196126817854648),
                        (3.1275816462829056, 0.7196126817854649),
                        fill: rgb(255, 255, 255, 200),
                        stroke: gray
                    )
          cetz.draw.line(
                            (2.7275816462829052 - x-max-text-width, 1.469612681785465),
                            (2.9275816462829054 - x-max-text-width, 1.469612681785465),
                            stroke: (paint: rgb(255, 0, 0), dash: (4pt, 2pt), thickness: 1pt)
                        )
          cetz.draw.circle(
                                    (2.8275816462829053 - x-max-text-width, 1.469612681785465),
                                    radius: 1pt,
                                    fill: rgb(255, 0, 0),
                                    stroke: none
                                )
          cetz.draw.content(
                        (3.0275816462829055 - x-max-text-width, 1.469612681785465),
                        [$sin(x)$],
                        anchor: "west"
                    )
          cetz.draw.line(
                            (2.7275816462829052 - x-max-text-width, 1.1696126817854648),
                            (2.9275816462829054 - x-max-text-width, 1.1696126817854648),
                            stroke: (paint: rgb(0, 0, 255), dash: (1pt, 1pt), thickness: 1pt)
                        )
          cetz.draw.content(
                                    (2.8275816462829053 - x-max-text-width, 1.1696126817854648),
                                    [#box(width: 1cm,height: 1cm)[#align(center + horizon)[#text(fill: rgb(0, 0, 255), size: 0.5em)[✖]]]]
                                )
          cetz.draw.content(
                        (3.0275816462829055 - x-max-text-width, 1.1696126817854648),
                        [$cos(x)$],
                        anchor: "west"
                    )
          cetz.draw.circle(
                            (2.8275816462829053 - x-max-text-width, 0.8696126817854649),
                            radius: 1pt,
                            fill: rgb(0, 127, 0, 127),
                            stroke: rgb(0, 127, 0, 127)
                        )
          cetz.draw.content(
                        (3.0275816462829055 - x-max-text-width, 0.8696126817854649),
                        [scatter],
                        anchor: "west"
                    )
      })}]
    }}],
    cell[#{
    {figure(caption: figure.caption(position: top)[条形图])[#context{
      cetz.canvas({
        cetz.draw.set-viewport((10.323316427145064cm, 9.953044444444444cm), (19.778709874492147cm, 19.37173333333333cm), bounds: (3.722595845412237, 3.7081452318460193))
        cetz.draw.rect((-0.26339742041498504, 0.0), (3.0654976375956773, 3.3144444444444443), stroke: black)
        {
          let x-max-text-width = 0
          cetz.draw.line((0.0, 0.0), (0.0, -0.05), stroke: black)
          cetz.draw.content((0.0, -0.2), $0.0$)
          cetz.draw.line((0.5604200434361384, 0.0), (0.5604200434361384, -0.05), stroke: black)
          cetz.draw.content((0.5604200434361384, -0.2), $2.0$)
          cetz.draw.line((1.1208400868722768, 0.0), (1.1208400868722768, -0.05), stroke: black)
          cetz.draw.content((1.1208400868722768, -0.2), $4.0$)
          cetz.draw.line((1.6812601303084151, 0.0), (1.6812601303084151, -0.05), stroke: black)
          cetz.draw.content((1.6812601303084151, -0.2), $6.0$)
          cetz.draw.line((2.2416801737445535, 0.0), (2.2416801737445535, -0.05), stroke: black)
          cetz.draw.content((2.2416801737445535, -0.2), $8.0$)
          cetz.draw.line((2.802100217180692, 0.0), (2.802100217180692, -0.05), stroke: black)
          cetz.draw.content((2.802100217180692, -0.2), $10.0$)
          cetz.draw.line((-0.26339742041498504, 0.0), (-0.31339742041498503, 0.0), stroke: black)
          let text-width = measure($0.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.3633974204149851 - text-width, 0.0), $0.0$)
          cetz.draw.line((-0.26339742041498504, 0.7191709438360834), (-0.31339742041498503, 0.7191709438360834), stroke: black)
          let text-width = measure($5.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.3633974204149851 - text-width, 0.7191709438360834), $5.0$)
          cetz.draw.line((-0.26339742041498504, 1.4383418876721668), (-0.31339742041498503, 1.4383418876721668), stroke: black)
          let text-width = measure($10.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.3633974204149851 - text-width, 1.4383418876721668), $10.0$)
          cetz.draw.line((-0.26339742041498504, 2.1575128315082504), (-0.31339742041498503, 2.1575128315082504), stroke: black)
          let text-width = measure($15.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.3633974204149851 - text-width, 2.1575128315082504), $15.0$)
          cetz.draw.line((-0.26339742041498504, 2.8766837753443335), (-0.31339742041498503, 2.8766837753443335), stroke: black)
          let text-width = measure($20.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.3633974204149851 - text-width, 2.8766837753443335), $20.0$)
        }
        cetz.draw.line((0.0, 0.0), (0.0, 3.3144444444444443), stroke: (gray + 0.2pt))
        cetz.draw.line((0.5604200434361384, 0.0), (0.5604200434361384, 3.3144444444444443), stroke: (gray + 0.2pt))
        cetz.draw.line((1.1208400868722768, 0.0), (1.1208400868722768, 3.3144444444444443), stroke: (gray + 0.2pt))
        cetz.draw.line((1.6812601303084151, 0.0), (1.6812601303084151, 3.3144444444444443), stroke: (gray + 0.2pt))
        cetz.draw.line((2.2416801737445535, 0.0), (2.2416801737445535, 3.3144444444444443), stroke: (gray + 0.2pt))
        cetz.draw.line((2.802100217180692, 0.0), (2.802100217180692, 3.3144444444444443), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.26339742041498504, 0.0), (3.0654976375956773, 0.0), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.26339742041498504, 0.7191709438360834), (3.0654976375956773, 0.7191709438360834), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.26339742041498504, 1.4383418876721668), (3.0654976375956773, 1.4383418876721668), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.26339742041498504, 2.1575128315082504), (3.0654976375956773, 2.1575128315082504), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.26339742041498504, 2.8766837753443335), (3.0654976375956773, 2.8766837753443335), stroke: (gray + 0.2pt))
        cetz.draw.rect((-0.11208400868722768, 0.0), (0.11208400868722768, 0.0), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((0.19926045988840477, 0.0), (0.42342847726286015, 3.1566137566137566), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((0.5106049284640373, 0.0), (0.7347729458384926, 2.078270227790439), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((0.8219493970396697, 0.0), (1.046117414414125, 1.0262279786378266), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((1.133293865615302, 0.0), (1.3574618829897573, 0.4504360726131381), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((1.4446383341909343, 0.0), (1.6688063515653897, 0.18535049569997214), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((1.755982802766567, 0.0), (1.9801508201410223, 0.07321930016538018), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((2.0673272713421995, 0.0), (2.291495288716655, 0.028120493551086267), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((2.3786717399178317, 0.0), (2.602839757292287, 0.010579507760817179), fill: rgb(0, 127, 0, 255), stroke: black)
        cetz.draw.rect((2.6900162084934642, 0.0), (2.9141842258679196, 0.003918037240485376), fill: rgb(0, 127, 0, 255), stroke: black)
      })}]
    }}],
    cell[#{
    {figure(caption: figure.caption(position: top)[饼图])[#context{
      cetz.canvas({
        cetz.draw.set-viewport((0.7226217236735415cm, -0.016455555555555224cm), (10.14131061256243cm, 9.402233333333333cm), bounds: (3.7081452318460193, 3.7081452318460193))
        
        {
          let x-max-text-width = 0
        }
           cetz.draw.arc((1.325777777777778, 0.0), radius: 1.325777777777778, start: 0.0deg, stop: 54.00000214576721deg, fill: rgb(31, 119, 180, 255), mode:"PIE", stroke: none)
           cetz.draw.content((0.5906383191766723, 0.30094526899836976), [15.0%])
           cetz.draw.content((1.5356596298593483, 0.7222686455960874), [A类])
           cetz.draw.arc((0.7792725854261118, 1.0725767821711816), radius: 1.325777777777778, start: 54.00000214576721deg, stop: 162.00000643730164deg, fill: rgb(255, 127, 14, 255), mode:"PIE", stroke: none)
           cetz.draw.content((-0.20484397927019388, 0.6304447820143316), [30.0%])
           cetz.draw.content((-0.5325943461025041, 1.5130674768343957), [B类])
           cetz.draw.arc((-1.2608896407441512, 0.4096877224343789), radius: 1.325777777777778, start: 162.00000643730164deg, stop: 324.0000021457672deg, fill: rgb(44, 160, 44, 255), mode:"PIE", stroke: none)
           cetz.draw.content((-0.30094521369881794, -0.5906383473531993), [45.0%])
           cetz.draw.content((-0.7824575556169265, -1.4175320336476784), [C类])
           cetz.draw.arc((1.0725767821711816, -0.7792725854261118), radius: 1.325777777777778, start: 324.0000021457672deg, stop: 360.000002682209deg, fill: rgb(214, 39, 40, 255), mode:"PIE", stroke: none)
           cetz.draw.content((0.6304448059879242, -0.20484390548706688), [10.0%])
           cetz.draw.content((1.639156495568603, -0.49162537316896054), [D类])
      })}]
    }}],
    cell[#{
    {figure(caption: figure.caption(position: top)[散点图])[#context{
      cetz.canvas({
        cetz.draw.set-viewport((10.323316427145064cm, -0.016455555555555224cm), (19.778709874492147cm, 9.402233333333333cm), bounds: (3.722595845412237, 3.7081452318460193))
        cetz.draw.rect((-0.08569396872479382, -0.13370174550235045), (3.2432010892858685, 3.1807426989420944), stroke: black)
        {
          let x-max-text-width = 0
          cetz.draw.line((0.0, -0.13370174550235045), (0.0, -0.18370174550235044), stroke: black)
          cetz.draw.content((0.0, -0.33370174550235043), $0.0$)
          cetz.draw.line((0.6375618663252229, -0.13370174550235045), (0.6375618663252229, -0.18370174550235044), stroke: black)
          cetz.draw.content((0.6375618663252229, -0.33370174550235043), $0.2$)
          cetz.draw.line((1.2751237326504459, -0.13370174550235045), (1.2751237326504459, -0.18370174550235044), stroke: black)
          cetz.draw.content((1.2751237326504459, -0.33370174550235043), $0.4$)
          cetz.draw.line((1.9126855989756688, -0.13370174550235045), (1.9126855989756688, -0.18370174550235044), stroke: black)
          cetz.draw.content((1.9126855989756688, -0.33370174550235043), $0.6$)
          cetz.draw.line((2.5502474653008917, -0.13370174550235045), (2.5502474653008917, -0.18370174550235044), stroke: black)
          cetz.draw.content((2.5502474653008917, -0.33370174550235043), $0.8$)
          cetz.draw.line((3.1878093316261147, -0.13370174550235045), (3.1878093316261147, -0.18370174550235044), stroke: black)
          cetz.draw.content((3.1878093316261147, -0.33370174550235043), $1.0$)
          cetz.draw.line((-0.08569396872479382, 0.0), (-0.13569396872479383, 0.0), stroke: black)
          let text-width = measure($0.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18569396872479382 - text-width, 0.0), $0.0$)
          cetz.draw.line((-0.08569396872479382, 0.6140695597254785), (-0.13569396872479383, 0.6140695597254785), stroke: black)
          let text-width = measure($0.2$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18569396872479382 - text-width, 0.6140695597254785), $0.2$)
          cetz.draw.line((-0.08569396872479382, 1.228139119450957), (-0.13569396872479383, 1.228139119450957), stroke: black)
          let text-width = measure($0.4$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18569396872479382 - text-width, 1.228139119450957), $0.4$)
          cetz.draw.line((-0.08569396872479382, 1.8422086791764352), (-0.13569396872479383, 1.8422086791764352), stroke: black)
          let text-width = measure($0.6$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18569396872479382 - text-width, 1.8422086791764352), $0.6$)
          cetz.draw.line((-0.08569396872479382, 2.456278238901914), (-0.13569396872479383, 2.456278238901914), stroke: black)
          let text-width = measure($0.8$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18569396872479382 - text-width, 2.456278238901914), $0.8$)
          cetz.draw.line((-0.08569396872479382, 3.070347798627392), (-0.13569396872479383, 3.070347798627392), stroke: black)
          let text-width = measure($1.0$).width.cm() / 20.32 * 2.54
          x-max-text-width = calc.max(x-max-text-width, text-width)
          cetz.draw.content((-0.18569396872479382 - text-width, 3.070347798627392), $1.0$)
        }
        cetz.draw.line((0.0, -0.13370174550235045), (0.0, 3.1807426989420944), stroke: (gray + 0.2pt))
        cetz.draw.line((0.6375618663252229, -0.13370174550235045), (0.6375618663252229, 3.1807426989420944), stroke: (gray + 0.2pt))
        cetz.draw.line((1.275123732650446, -0.13370174550235045), (1.275123732650446, 3.1807426989420944), stroke: (gray + 0.2pt))
        cetz.draw.line((1.912685598975669, -0.13370174550235045), (1.912685598975669, 3.1807426989420944), stroke: (gray + 0.2pt))
        cetz.draw.line((2.5502474653008917, -0.13370174550235045), (2.5502474653008917, 3.1807426989420944), stroke: (gray + 0.2pt))
        cetz.draw.line((3.1878093316261156, -0.13370174550235045), (3.1878093316261156, 3.1807426989420944), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08569396872479382, 0.0), (3.2432010892858685, 0.0), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08569396872479382, 0.6140695597254785), (3.2432010892858685, 0.6140695597254785), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08569396872479382, 1.228139119450957), (3.2432010892858685, 1.228139119450957), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08569396872479382, 1.8422086791764356), (3.2432010892858685, 1.8422086791764356), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08569396872479382, 2.456278238901914), (3.2432010892858685, 2.456278238901914), stroke: (gray + 0.2pt))
        cetz.draw.line((-0.08569396872479382, 3.070347798627393), (3.2432010892858685, 3.070347798627393), stroke: (gray + 0.2pt))
        cetz.draw.circle((1.1939624859299762, 2.976962027439872), radius: 1.0pt, fill: rgb(70, 9, 92, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((3.03069593768398, 2.3799273578506335), radius: 1.0pt, fill: rgb(48, 180, 122, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((2.3334571184001804, 2.884588507044373), radius: 1.0pt, fill: rgb(50, 99, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.9084091023804581, 2.7474311855371134), radius: 1.0pt, fill: rgb(31, 149, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.49735767791001867, 1.8357608837419797), radius: 1.0pt, fill: rgb(210, 225, 27, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.4972807876102865, 2.830474528114538), radius: 1.0pt, fill: rgb(58, 82, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.1851594808843384, 0.271702758870141), radius: 1.0pt, fill: rgb(39, 124, 142, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((2.76120440033328, 0.6017355501973175), radius: 1.0pt, fill: rgb(107, 205, 89, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.9162400438155425, 0.13886350694435562), radius: 1.0pt, fill: rgb(61, 75, 137, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((2.257200370966792, 0.99887726488571), radius: 1.0pt, fill: rgb(72, 26, 108, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.06561944300296357, 1.1933744607745622), radius: 1.0pt, fill: rgb(53, 93, 140, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((3.091887677558111, 0.8331359023666556), radius: 1.0pt, fill: rgb(69, 54, 129, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((2.6536684183870705, 2.5445123868645747), radius: 1.0pt, fill: rgb(225, 227, 24, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.6768965984893991, 1.0953567912666606), radius: 1.0pt, fill: rgb(141, 214, 68, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.5796233271854077, 0.8625666533771152), radius: 1.0pt, fill: rgb(47, 179, 123, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.58465860797309, 1.6662657242486363), radius: 1.0pt, fill: rgb(186, 222, 39, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.969866261181274, 0.43268638392453385), radius: 1.0pt, fill: rgb(139, 213, 70, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.6728234495880692, 2.463023733923706), radius: 1.0pt, fill: rgb(66, 62, 133, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.3769583611767526, 0.22889640470843944), radius: 1.0pt, fill: rgb(199, 224, 31, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.9283829707647681, 3.030086133285529), radius: 1.0pt, fill: rgb(30, 156, 137, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.950470367378452, 2.3710600274115103), radius: 1.0pt, fill: rgb(141, 214, 68, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.44467983069113187, 0.6101262553511881), radius: 1.0pt, fill: rgb(202, 224, 30, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.9313014367851999, 0.016954820154215254), radius: 1.0pt, fill: rgb(49, 100, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.1678917028033746, 2.5037502017218487), radius: 1.0pt, fill: rgb(71, 38, 118, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.453864151561642, 2.170297889626137), radius: 1.0pt, fill: rgb(61, 75, 137, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((2.502991256697155, 2.238305553578235), radius: 1.0pt, fill: rgb(38, 128, 142, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.6365219460454992, 2.368068211093779), radius: 1.0pt, fill: rgb(149, 215, 63, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.6392813414184257, 0.22734283345189626), radius: 1.0pt, fill: rgb(178, 221, 44, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.8885046908096805, 1.1006144605192718), radius: 1.0pt, fill: rgb(68, 1, 84, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.1480750591266931, 0.3557583118420083), radius: 1.0pt, fill: rgb(31, 149, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.936737148272811, 2.650027703624889), radius: 1.0pt, fill: rgb(39, 125, 142, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.5435983927577137, 1.9137420315935696), radius: 1.0pt, fill: rgb(61, 74, 137, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.20737207515561795, 1.0159720221764836), radius: 1.0pt, fill: rgb(71, 40, 120, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((3.024866170301235, 0.19514624088508134), radius: 1.0pt, fill: rgb(47, 105, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((3.078250805952177, 0.9548238868917189), radius: 1.0pt, fill: rgb(236, 228, 26, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((2.5770166099874596, 0.9984258969351651), radius: 1.0pt, fill: rgb(49, 101, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.9710506159126744, 2.2401447235252196), radius: 1.0pt, fill: rgb(30, 151, 138, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.3113600764692002, 1.9575231786739253), radius: 1.0pt, fill: rgb(77, 194, 107, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((2.1812044269222324, 2.724051691083395), radius: 1.0pt, fill: rgb(44, 112, 142, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.4031222268816061, 1.4498640559499898), radius: 1.0pt, fill: rgb(253, 231, 36, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.38903462385336524, 0.36719592974516757), radius: 1.0pt, fill: rgb(248, 230, 33, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.5785295748584929, 2.1899095623325855), radius: 1.0pt, fill: rgb(58, 82, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.10962404851191489, 2.3358746992495245), radius: 1.0pt, fill: rgb(31, 146, 140, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((2.898740063184752, 1.7233162079772546), radius: 1.0pt, fill: rgb(52, 95, 141, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.8249412401825682, 2.3671373837874548), radius: 1.0pt, fill: rgb(54, 91, 140, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((2.111994720473874, 1.5161242222693074), radius: 1.0pt, fill: rgb(70, 11, 94, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.9936754771290421, 1.6049715919632737), radius: 1.0pt, fill: rgb(39, 173, 128, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.6578776909909532, 1.3126996245400864), radius: 1.0pt, fill: rgb(31, 147, 139, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((1.7428081301864267, 0.07804555984176333), radius: 1.0pt, fill: rgb(71, 17, 99, 255), stroke: rgb(31, 119, 180, 127))
        cetz.draw.circle((0.5892807583169397, 0.33126420535966034), radius: 1.0pt, fill: rgb(54, 90, 140, 255), stroke: rgb(31, 119, 180, 127))
      })}]
    }}],
  )
}