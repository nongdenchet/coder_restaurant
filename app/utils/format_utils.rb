class FormatUtils
  def self.format_price(amount)
    number_to_currency(amount, precision: 0, separator: '.', delimiter: '.', unit: '') + ' VND'
  end
end