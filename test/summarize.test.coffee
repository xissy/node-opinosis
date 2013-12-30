should = require 'should'

summarize = require '../lib/summarize'


describe 'summarize(...)', ->
  parsedSentences = [
    'the/DT rooms/NNS were/VBD very/RB nice/JJ ./.'
    'the/DT rooms/NNS were/VBD nice/JJ ./.'
    'the/DT rooms/NNS were/VBD cool/JJ ./.'
    'the/DT rooms/NNS were/VBD cool/JJ ./.'
    'the/DT toilet/NNS were/VBD cool/JJ ./.'
    'the/DT toilet/NNS were/VBD cool/JJ ./.'
    'the/DT toilet/NNS were/VBD clean/JJ ./.'
    'very/RB good/JJ selection/NN of/IN food/NN ./.'
    'very/RB good/JJ selection/NN of/IN food/NN for/IN breakfast/NN buffet/NN ./.'
    'its/PRP$ a/DT chain/NN but/CC the/DT food/NN was/VBD cheap/JJ and/CC delicious/JJ !/.'
    'the/DT food/NN delicious/JJ and/CC reasonable/JJ ./.'
    'the/DT food/NN was/VBD delicious/JJ in/IN both/CC the/DT consortia/NN and/CC forum/NN restaurants/NNS in/IN the/DT hotel/NN ./.'
    'a/JJ b/JJ c/NN ./.'
    'a/JJ b/JJ c/NN ./.'
  ]

  it 'should be done', (done) ->
    summarize parsedSentences, (err, summarizedSentences) ->
      should.not.exist err
      summarizedSentences.should.have.length 5
      done()
