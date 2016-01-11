global.fg ||= require 'factory_girl'
fg.define 'sample', (options)->
  @name = faker.company.companyName()