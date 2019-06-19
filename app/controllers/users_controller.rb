class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    session[:user_id] = @user.id

    redirect_to cryptos_path
  end

  def logout
    session[:user_id] = nil
    redirect_to signup_path
  end

  def add_funds_form
    @user = User.find(session[:user_id])
  end

  def add_funds
    @user = User.find(session[:user_id])
    new_wallet = @user.wallet.to_f + params[:user][:wallet].to_f
    @user.update(wallet: new_wallet)
    redirect_to user_path
  end

  def edit
    if !authorized?
      @user = User.find(session[:user_id])
    end
  end

  def show
    @user = User.find(session[:user_id])
    @cryptos = Crypto.all
    @cryptos.each do |crypto|
      crypto.update(value: Coinmarketcap.coin(crypto.coinbase_id)["data"]["quotes"]["USD"]["price"].round(2))
      end

    @bitcoin = Crypto.find_by(name: "Bitcoin")
    @bitcoin_cash = Crypto.find_by(name: "Bitcoin Cash")
    @litecoin = Crypto.find_by(name: "Litecoin")
    @etherium = Crypto.find_by(name: "Etherium")
    @stellar = Crypto.find_by(name: "Stellar")

  end


private

  def user_params
    params.require(:user).permit(:name,:username,:password,:email,:phone, :wallet,:bitcoin,:litecoin,:bitcoin_cash,:etherium,:stellar)
  end


end
