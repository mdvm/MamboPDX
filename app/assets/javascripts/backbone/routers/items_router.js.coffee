class MamboPDX.Routers.ItemsRouter extends Backbone.Router
  initialize: (options) ->
    @items = new MamboPDX.Collections.ItemsCollection()
    @items.reset options.items

  routes:
    "new"      : "newItem"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newItem: ->
    @view = new MamboPDX.Views.Items.NewView(collection: @items)
    $("#items").html(@view.render().el)

  index: ->
    @view = new MamboPDX.Views.Items.IndexView(items: @items)
    $("#items").html(@view.render().el)

  show: (id) ->
    item = @items.get(id)

    @view = new MamboPDX.Views.Items.ShowView(model: item)
    $("#items").html(@view.render().el)

  edit: (id) ->
    item = @items.get(id)

    @view = new MamboPDX.Views.Items.EditView(model: item)
    $("#items").html(@view.render().el)
