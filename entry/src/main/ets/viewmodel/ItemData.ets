export default class ItemData {
  title: Resource | string
  image: Resource
  other?: Resource

  constructor(title: Resource | string, image: Resource, other?: Resource) {
    this.title = title
    this.image = image
    this.other = other
  }
}