# Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.
def stock_picker(stock_prices)
  index_combination = (0..stock_prices.length - 1).to_a.combination(2).to_a
  price_diff = stock_prices.combination(2).map {|price_pair| price_pair[1] - price_pair[0]}
  index_combination[price_diff.each_with_index.max[1]]
end

# check with example from odin site:
p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([17,3,6,9,15,8,6,1,10]) == [1,4]