
parseTokens = (tokens) ->
  parsedSentence = ''

  for token in tokens
    parsedSentence += "#{token.word}/#{token.POS} "

  parsedSentence
  


module.exports = parseTokens
