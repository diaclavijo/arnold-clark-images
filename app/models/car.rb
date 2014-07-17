class Car
  attr_accessor :stock_ref, :registration

  # Initialize assigning the parameters given as hash.
  def initialize(params={})
    params.each_pair do |attr, value|
      send("#{attr}=", value) if respond_to?("#{attr}=", true)
    end unless params.blank?
  end

  def obfuscated_stock_reference
    ((@registration.chars.reverse.map.with_index{ |x,i| [@stock_ref[i], x] } ).flatten << stock_ref[10] ).join('')
  end

  def images_list
    prefix  = "http://imagecache.arnoldclark.com/imageserver/#{obfuscated_stock_reference}"
    cameras = ['f', 'i', 'r', '4', '5', '6']
    size = '350'
    images_list = cameras.map{ |camera| "#{prefix}/#{size}/#{camera}/" }
    images_list.sort
  end
end