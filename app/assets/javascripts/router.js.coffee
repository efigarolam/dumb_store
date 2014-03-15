# For more information see: http://emberjs.com/guides/routing/

DumbStore.Router.map ()->
  @resource 'products', ->
    @route 'new'

