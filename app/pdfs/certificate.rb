class Certificate < Prawn::Document
  def initialize(atom, unique, name)
    super(top_margin: 70, page_layout: :landscape, page_size: "LETTER", background: "#{Rails.root}/app/assets/images/cert2.png")
    # @atom = atom
    # @unique = unique
    
    text "#{atom}"
    text "#{unique}"
    text "#{name}"
  end
end


#atom, unique, name
# A4 = 841.9 x 594.3