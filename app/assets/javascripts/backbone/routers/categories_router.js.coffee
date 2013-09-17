class MamboPDX.Routers.CategoriesRouter extends Backbone.Router
  initialize: (options) ->
    @categories = new MamboPDX.Collections.CategoriesCollection()
    @categories.reset options.categories

  routes:
    "new"      : "newCategory"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newCategory: ->
    @view = new MamboPDX.Views.Categories.NewView(collection: @categories)
    $("#categories").html(@view.render().el)

  index: ->
    @view = new MamboPDX.Views.Categories.IndexView(categories: @categories)
    $("#categories").html(@view.render().el)

  show: (id) ->
    category = @categories.get(id)

    @view = new MamboPDX.Views.Categories.ShowView(model: category)
    $("#categories").html(@view.render().el)

  edit: (id) ->
    category = @categories.get(id)

    @view = new MamboPDX.Views.Categories.EditView(model: category)
    $("#categories").html(@view.render().el)
