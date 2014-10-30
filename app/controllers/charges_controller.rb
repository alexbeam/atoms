class ChargesController < ApplicationController
  def index
    @order = Order.find(params[:order][:order_id])
    @order.update_attributes(:name => params[:order][:name])
    redirect_to "/download/#{@order.id}"
  end
  def download
    @order = Order.find(params[:order_id])
    pdf = Certificate.new(Atom.find(@order.atom_id).name, @order.unique, @order.name)
    send_data pdf.render, filename: "new.pdf",
                          type: "application/pdf",
                          disposition: "inline"
  end

  def create
    @atom = Atom.where(number: params[:number]).first
    @email = params[:stripeEmail]
    @unique = session[":" + "#{@atom.shortname}"]
    session[":" + "#{@atom.shortname}"] = nil
        # Amount in cents
        @amount = 100

        customer = Stripe::Customer.create(
          :email => params[:stripeEmail],
          :card  => params[:stripeToken]
        )

        charge = Stripe::Charge.create(
          :customer    => customer.id,
          :amount      => @amount,
          :description => 'Rails Atom Stripe customer',
          :currency    => 'usd'
        )
      
      if charge
        @order = Order.create(unique: @unique, email: @email, atom_id: @atom.id)
      end


      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to charges_path
  end

  private

  def charge_params
    params[:charge].permit(:number, :order_id)
  end
end
