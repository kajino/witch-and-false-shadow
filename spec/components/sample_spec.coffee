require "../spec.coffee"
Sample = require "../../src/components/sample.vue"
require "../fakers/sample_faker.coffee"

describe Sample, ->
  beforeEach ->
    delete Sample.props
    # override props datas
    # Sample = _.extend Sample,
    #   data: =>
    #     some: data alter prop
    # sinon.stub Sample, "foo",  -> "override @sample.foo method return"
    @sample = new Vue Sample

  describe '#data', ->
    before ->
      # create sample data
      # console.log fg.create('sample')
      # console.log fg.createLists('sample', 2)
    it 'message is hello, world!', ->
      expect(@sample.test).to.equal('hello, world!')
