# To run in terminal: ruby qrcode.rb

require 'csv'
require 'pngqr'

csv_text = File.read("ProspectsNew.csv")
csv = CSV.parse(csv_text, :headers => true)
csv.each do |bil|
  
  file_name = bil['Membership no']
  
  code1 = "*" + bil['Membership no'] + bil['Data file 1'] + bil['Voucher Type 1'] + bil['Week 1'] + bil['Month 1'] + bil['Year 1'] + bil['Value 1'] + bil['Voucher Number 1'] + "*"
  Pngqr.encode code1, :file => file_name + '_1.png', :scale => 3
  
  code2 = "*" + bil['Membership no'] + bil['Data file 2'] + bil['Voucher Type 2'] +  bil['Week 2'] + bil['Month 2'] + bil['Year 2'] + bil['Value 2'] + bil['Voucher Number 2'] + "*"
  Pngqr.encode code2, :file => file_name + '_2.png', :scale => 3

  code3 = "*" + bil['Membership no'] + bil['Data file 3'] + bil['Voucher Type 3'] +  bil['Week 3'] + bil['Month 3'] + bil['Year 3'] + bil['Value 3'] + bil['Voucher Number 3'] + "*"
  Pngqr.encode code3, :file => file_name + '_3.png', :scale => 3

  code4 = "*" + bil['Membership no'] + bil['Data file 4'] + bil['Voucher Type 4'] +  bil['Week 4'] + bil['Month 4'] + bil['Year 4'] + bil['Value 4'] + bil['Voucher Number 4'] + "*"
  Pngqr.encode code4, :file => file_name + '_4.png', :scale => 3

  code5 = "*" + bil['Membership no'] + bil['Data file 5'] + bil['Voucher Type 5'] +  bil['Week 5'] + bil['Month 5'] + bil['Year 5'] + bil['Value 5'] + bil['Voucher Number 5'] + "*"
  Pngqr.encode code5, :file => file_name + '_5.png', :scale => 3

  code6 = "*" + bil['Membership no'] + bil['Data file 2'] + bil['Voucher Type 6'] +  bil['Week 6'] + bil['Month 6'] + bil['Year 6'] + bil['Value 6'] + bil['Voucher Number 6'] + "*"
  Pngqr.encode code6, :file => file_name + '_6.png', :scale => 3
  puts file_name
end