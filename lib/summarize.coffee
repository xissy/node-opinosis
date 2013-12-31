java = require 'java'

java.classpath.push "#{__dirname}/../jar/args4j-2.0.5.jar"
java.classpath.push "#{__dirname}/../jar/commons-codec-1.4.jar"
java.classpath.push "#{__dirname}/../jar/commons-collections-3.2.1.jar"
java.classpath.push "#{__dirname}/../jar/jgrapht.jar"
java.classpath.push "#{__dirname}/../jar/junit.jar"
java.classpath.push "#{__dirname}/../jar/log4j-1.2.15.jar"
java.classpath.push "#{__dirname}/../jar/org.hamcrest.core_1.1.0.v20090501071000.jar"
java.classpath.push "#{__dirname}/../jar/opinosis.jar"
java.classpath.push "#{__dirname}/../jar/opinosis-xissy-0.0.2.jar"


summarize = (parsedSentences, callback) ->
  java.newInstance 'io.recom.opinosis.Opinosis',
    "#{__dirname}/../opinosis.properties"
  ,
    (err, opinosis) ->
      return callback err  if err?

      fullText = parsedSentences.join '\n'
      fullText = fullText.replace /\/:/g, '/,'
      opinosis.summarize fullText, (err, summarizedText) ->
        return callback err  if err?

        summarizedSentences = []
        for sentence in summarizedText.split '\n'
          continue  if sentence.length is 0
          sentence = sentence[0...-2]  if sentence[-2..-1] is ' .'
          sentence = sentence.replace /\ ,/g, ','
          sentence = sentence.replace /\ 's\ /g, '\'s '
          sentence = sentence.replace /\ 've\ /g, '\'ve '
          sentence = sentence.replace /\ 're\ /g, '\'re '
          sentence = sentence.replace /\ n\'t\ /g, 'n\'t '
          summarizedSentences.push sentence

        callback null, summarizedSentences



module.exports = summarize
