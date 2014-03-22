module VendorsHelper
  def vendor_hero_image(v)
    v.images.where(image_type: "hero").first.url
  end

  def vendor_logo_image(v)
    v.images.where(image_type: "logo").first.url
  end
end
