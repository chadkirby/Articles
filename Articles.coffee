
articles = require './articledata'

find = (word, obj = articles, article = 'a') ->
  return article unless word?
  key = word[0]
  obj = obj[key]
  if key? and obj?
    find(word[1..], obj, obj.article ? article)
  else
    article

articlize = (inputs...) -> 
  out = for input in inputs when input?
    "#{find(input)} #{input}"
  if inputs.length is 1 then out[0] else out 


module.exports = {
  find
  articlize
}
