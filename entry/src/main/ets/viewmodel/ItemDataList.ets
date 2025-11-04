import ItemData from './ItemData'

export class ItemDataList {
  getItemData(): Array<ItemData> {
    return [
      new ItemData('喜欢', $r('app.media.like')),
      new ItemData('历史', $r('app.media.paper')),
      new ItemData('消息', $r('app.media.message')),
      new ItemData('购物车', $r('app.media.basket')),
      new ItemData('收藏', $r('app.media.collect'))
    ]
  }
}

export default new ItemDataList()