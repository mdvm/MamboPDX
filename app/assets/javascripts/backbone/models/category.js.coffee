class MamboPDX.Models.Category extends Backbone.Model
  paramRoot: 'category'

class MamboPDX.Collections.CategoriesCollection extends Backbone.Collection
  model: MamboPDX.Models.Category
  url: '/categories'
