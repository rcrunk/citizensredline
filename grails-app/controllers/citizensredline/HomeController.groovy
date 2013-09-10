package citizensredline

import grails.converters.JSON
import org.citizensredline.ajax.JsonResponse

class HomeController {
  def index() {
    def drawer = RedLineDrawer.get(1)
    [nowDrawn: drawer.drawn]
  }

  def draw() {
    //RedLineDrawer.executeUpdate(
    //    "update red_line_drawer set drawn = drawn + 1 where campaign = :campaign", [campaign: 1])
    def drawer = RedLineDrawer.get(1)
    drawer.drawn++
    drawer.save()
    def response = new JsonResponse("success", createMessage(drawer.drawn))
    render response as JSON
  }

  String createMessage(int count) {
    def nth = ""
    if (count > 10 && count < 20) {
      nth = "th";
    }
    else {
      switch (count % 10) {
        case 0: nth = "th"; break
        case 1: nth = "st"; break
        case 2: nth = "nd"; break
        case 3: nth = "rd"; break
        default: nth = "th"
      }
    }
    "${count}${nth}"
  }
}
