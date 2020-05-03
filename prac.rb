bands = {
  joy_division: %w[ian bernard peter stephen],
  the_smiths: %w[johnny andy morrissey mike],
  the_cramps: %w[lux ivy nick],
  blondie: %w[debbie chris clem jimmy nigel],
  talking_heads: %w[david tina chris jerry]
}


var = bands.reduce({}) do |memo, (key, value)|
  memo[key] = value.sort
  memo
end

first_most_name = bands.reduce(nil) do |memo, (key, value)|
  memo = value[0] if !memo
  p memo
  sorted_names = value.sort

  memo = sorted_names[0] if sorted_names[0] <= memo

  p memo
end

p first_most_name
