DumbStore.ProductsNewRoute = Em.Route.extend
  model: ->
    @store.createRecord('product')

  actions:
    createProduct: ->
      @modelFor('productsNew').save().then (product) ->
        alert "Product #{product.get('name')} has been saved"
