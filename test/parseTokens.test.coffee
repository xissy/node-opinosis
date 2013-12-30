should = require 'should'

parseTokens = require '../lib/parseTokens'


describe 'parseTokens(...)', ->
  tokens = [
    "@":
      id: "1"

    word: "I"
    lemma: "I"
    CharacterOffsetBegin: "205"
    CharacterOffsetEnd: "206"
    POS: "PRP"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "2"

    word: "accidentally"
    lemma: "accidentally"
    CharacterOffsetBegin: "207"
    CharacterOffsetEnd: "219"
    POS: "RB"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "3"

    word: "jammed"
    lemma: "jam"
    CharacterOffsetBegin: "220"
    CharacterOffsetEnd: "226"
    POS: "VBD"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "4"

    word: "and"
    lemma: "and"
    CharacterOffsetBegin: "227"
    CharacterOffsetEnd: "230"
    POS: "CC"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "5"

    word: "broke"
    lemma: "break"
    CharacterOffsetBegin: "231"
    CharacterOffsetEnd: "236"
    POS: "VBD"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "6"

    word: "the"
    lemma: "the"
    CharacterOffsetBegin: "237"
    CharacterOffsetEnd: "240"
    POS: "DT"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "7"

    word: "buckle"
    lemma: "buckle"
    CharacterOffsetBegin: "241"
    CharacterOffsetEnd: "247"
    POS: "NN"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "8"

    word: "once"
    lemma: "once"
    CharacterOffsetBegin: "248"
    CharacterOffsetEnd: "252"
    POS: "RB"
    NER: "DATE"
    NormalizedNER: "PAST_REF"
    Speaker: "PER0"
    Timex:
      _: "PAST_REF"
      "@":
        tid: "t3"
        type: "DATE"
  ,
    "@":
      id: "9"

    word: ","
    lemma: ","
    CharacterOffsetBegin: "252"
    CharacterOffsetEnd: "253"
    POS: ","
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "10"

    word: "and"
    lemma: "and"
    CharacterOffsetBegin: "254"
    CharacterOffsetEnd: "257"
    POS: "CC"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "11"

    word: "it"
    lemma: "it"
    CharacterOffsetBegin: "258"
    CharacterOffsetEnd: "260"
    POS: "PRP"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "12"

    word: "was"
    lemma: "be"
    CharacterOffsetBegin: "261"
    CharacterOffsetEnd: "264"
    POS: "VBD"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "13"

    word: "a"
    lemma: "a"
    CharacterOffsetBegin: "265"
    CharacterOffsetEnd: "266"
    POS: "DT"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "14"

    word: "very"
    lemma: "very"
    CharacterOffsetBegin: "267"
    CharacterOffsetEnd: "271"
    POS: "RB"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "15"

    word: "smooth"
    lemma: "smooth"
    CharacterOffsetBegin: "272"
    CharacterOffsetEnd: "278"
    POS: "JJ"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "16"

    word: "experience"
    lemma: "experience"
    CharacterOffsetBegin: "279"
    CharacterOffsetEnd: "289"
    POS: "NN"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "17"

    word: "to"
    lemma: "to"
    CharacterOffsetBegin: "290"
    CharacterOffsetEnd: "292"
    POS: "TO"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "18"

    word: "get"
    lemma: "get"
    CharacterOffsetBegin: "293"
    CharacterOffsetEnd: "296"
    POS: "VB"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "19"

    word: "a"
    lemma: "a"
    CharacterOffsetBegin: "297"
    CharacterOffsetEnd: "298"
    POS: "DT"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "20"

    word: "free"
    lemma: "free"
    CharacterOffsetBegin: "299"
    CharacterOffsetEnd: "303"
    POS: "JJ"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "21"

    word: "replacement"
    lemma: "replacement"
    CharacterOffsetBegin: "304"
    CharacterOffsetEnd: "315"
    POS: "NN"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "22"

    word: "from"
    lemma: "from"
    CharacterOffsetBegin: "316"
    CharacterOffsetEnd: "320"
    POS: "IN"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "23"

    word: "customer"
    lemma: "customer"
    CharacterOffsetBegin: "321"
    CharacterOffsetEnd: "329"
    POS: "NN"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "24"

    word: "service"
    lemma: "service"
    CharacterOffsetBegin: "330"
    CharacterOffsetEnd: "337"
    POS: "NN"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "25"

    word: "-LRB-"
    lemma: "-lrb-"
    CharacterOffsetBegin: "338"
    CharacterOffsetEnd: "339"
    POS: "-LRB-"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "26"

    word: "they"
    lemma: "they"
    CharacterOffsetBegin: "339"
    CharacterOffsetEnd: "343"
    POS: "PRP"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "27"

    word: "sent"
    lemma: "send"
    CharacterOffsetBegin: "344"
    CharacterOffsetEnd: "348"
    POS: "VBD"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "28"

    word: "it"
    lemma: "it"
    CharacterOffsetBegin: "349"
    CharacterOffsetEnd: "351"
    POS: "PRP"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "29"

    word: "within"
    lemma: "within"
    CharacterOffsetBegin: "352"
    CharacterOffsetEnd: "358"
    POS: "IN"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "30"

    word: "5-7"
    lemma: "5-7"
    CharacterOffsetBegin: "359"
    CharacterOffsetEnd: "362"
    POS: "CD"
    NER: "NUMBER"
    NormalizedNER: "<=5.0 - 7.0"
    Speaker: "PER0"
  ,
    "@":
      id: "31"

    word: "business"
    lemma: "business"
    CharacterOffsetBegin: "363"
    CharacterOffsetEnd: "371"
    POS: "NN"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "32"

    word: "days"
    lemma: "day"
    CharacterOffsetBegin: "372"
    CharacterOffsetEnd: "376"
    POS: "NNS"
    NER: "DURATION"
    NormalizedNER: "PXD"
    Speaker: "PER0"
    Timex:
      _: "PXD"
      "@":
        tid: "t4"
        type: "DURATION"
  ,
    "@":
      id: "33"

    word: "-RRB-"
    lemma: "-rrb-"
    CharacterOffsetBegin: "376"
    CharacterOffsetEnd: "377"
    POS: "-RRB-"
    NER: "O"
    Speaker: "PER0"
  ,
    "@":
      id: "34"

    word: "."
    lemma: "."
    CharacterOffsetBegin: "377"
    CharacterOffsetEnd: "378"
    POS: "."
    NER: "O"
    Speaker: "PER0"
  ]

  it 'should be done', (done) ->
    parsedSentence = parseTokens tokens
    parsedSentence.should.equal 'I/PRP accidentally/RB jammed/VBD and/CC broke/VBD the/DT buckle/NN once/RB ,/, and/CC it/PRP was/VBD a/DT very/RB smooth/JJ experience/NN to/TO get/VB a/DT free/JJ replacement/NN from/IN customer/NN service/NN -LRB-/-LRB- they/PRP sent/VBD it/PRP within/IN 5-7/CD business/NN days/NNS -RRB-/-RRB- ./. '
    done()
