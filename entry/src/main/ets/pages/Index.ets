import itemDataList from '../viewmodel/ItemDataList'
import ItemData from '../viewmodel/ItemData'

@Entry
@Component
struct Index {
  build() {
    Column() {
      List() {
        ForEach(itemDataList.getItemData(), (item: ItemData) => {
          ListItem() {
            Row() {
              Flex({ alignItems: ItemAlign.Center }) {
                Image(item.image).width(15).height(15)
                Text(item.title)
                  .fontWeight(600)
                  .fontSize(12)
                  .margin({ left: 10 })
              }

              Image($r('app.media.arrow')).width(10).height(10)
            }
            .padding({ left: 10, right: 20 })
          }.height(35)
        }, (item: ItemData) => JSON.stringify(item))
      }
      .divider({
        strokeWidth: 1,
        startMargin: 30,
        endMargin: 10,
        color: '#ffe9f0f0'
      })
      .backgroundColor(Color.White)
      .width('100%')
      .height(-1)
      .borderRadius(10)
    }
    .height('100%')
    .padding(10)
    .backgroundColor(0xF1F3F5)
  }
}