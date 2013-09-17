class MamboPDX.Models.Item extends Backbone.Model
  paramRoot: 'item'

class MamboPDX.Collections.ItemsCollection extends Backbone.Collection
  model: MamboPDX.Models.Item
  url: '/items'
