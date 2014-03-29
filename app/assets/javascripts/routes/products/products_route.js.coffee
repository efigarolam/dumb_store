DumbStore.ProductsRoute = Em.Route.extend
  model: ->
    @store.find('product')

  setupController: (controller, model) ->
    controller.set('content', model)
    controller.set('all', model)

  actions:
    edit: (product) ->
      @transitionTo('products.edit', product.get('id'))

    delete: (product) ->
      product.deleteRecord()
      product.save()

