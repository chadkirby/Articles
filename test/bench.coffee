{articlize} = require '../lib/Articles'
fs = require 'fs'
words = """
  #{fs.readFileSync('/usr/share/dict/words', 'utf8')}
  #{fs.readFileSync('/usr/share/dict/propernames', 'utf8')}
  #{fs.readFileSync('/usr/share/dict/connectives', 'utf8')}
  """.split('\n')
console.log "#{words.length} words loaded"

console.time 'articlize timer'
for word, i in words
  o = articlize word
  # console.log o if Math.random() > 0.9999
console.timeEnd 'articlize timer'

# OldArticles = require './OldArticles'
# console.time 'old articlize timer'
# for word, i in words
#   o = OldArticles.articlize word
# console.timeEnd 'old articlize timer'

# for word, i in words
#   o = OldArticles.articlize word
#   n = Articles.articlize word
#   console.log "no match", n, o unless n is o

console.log articlize(
  'unanticipated result'
  'unanimous vote'
  'honest decision'
  'honeysuckle shrub'
  '0800 number'
  '∞ of oregano'
  'NASA scientist'
  'NSA analyst'
  'FIAT car'
  'FAA policy'
)
