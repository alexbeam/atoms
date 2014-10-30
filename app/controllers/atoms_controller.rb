class AtomsController < ApplicationController
  def index
    @atoms = Atom.all.collect { |atom| [atom.number, atom.shortname, atom.name, atom.weight, atom.row_position_x, atom.row_position_y] }.to_json.html_safe
  end

  def show
    @atom = Atom.where(number: params[:number]).first
    if session[":" + "#{@atom.shortname}"] == nil
      session[":" + "#{@atom.shortname}"] = @atom.unique
    end

    @num = session[":" + "#{@atom.shortname}"]
    
    embedly_api = Embedly::API.new :key => '9d9141c00e694418a13f4838aed7cacd',
            :user_agent => 'Mozilla/5.0 (compatible; mytestapp/1.0; my@email.com)'
    #url = 'http://periodic.lanl.gov/' + @atom.number.to_s + '.shtml'
    #url = 'http://www.chemicool.com/elements/' + @atom.name.downcase
    url = 'http://www.radiochemistry.org/periodictable/elements/' + @atom.number.to_s + '.html'
    obj = embedly_api.extract :url => url
    if obj[0].content != nil
      @cont = obj[0].content.html_safe
    else
      url = 'http://www.lenntech.com/periodic/elements/'+@atom.shortname+'.htm'
      obj = embedly_api.extract :url => url
      @cont = obj[0].content.html_safe
    end
  end

  def refresh
    @atom = Atom.where(number: params[:number]).first
    session[":" + "#{@atom.shortname}"] = nil
    redirect_to '/atoms/' + params[:number]
  end
  # def buy
  #   @atom = Atom.where(number: params[:number]).first
  # end

  # def new_num
  #   session.delete(":" + params[:shortname])
  #   render '/atoms/' + "#{@atom.number}"
  # end

  # def complete
  #   respond_to do |format|
  #     format.html
  #     format.pdf do
  #       pdf = Prawn::Document.new
  #       pdf.text "Hello World"
  #       send_data pdf.render
  # end
end
