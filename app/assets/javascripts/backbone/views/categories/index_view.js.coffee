MamboPDX.Views.Categories ||= {}

class MamboPDX.Views.Categories.IndexView extends Backbone.View
  template: JST["backbone/templates/categories/index"]

  initialize: () ->
    @options.categories.bind('reset', @addAll)

  addAll: () =>
    @options.categories.each(@addOne)

  addOne: (category) =>
    view = new MamboPDX.Views.Categories.CategoryView({model : category})
    @$("tbody").append(view.render().el)

  render: =>
    @$el.html(@template(categories: @options.categories.toJSON() ))
    @addAll()

    return this
