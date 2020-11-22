require 'rails_helper'

RSpec.describe Order, type: :model do

  before do 
    @order = FactoryBot.build(:order)
  end

  it 'priceが空であったとき保存ができない' do
    @order.price = nil
    @order.valid?
    expect(@order.errors.full_messages).to include("Price can't be blank")
  end

  it 'priceが存在すれば保存ができること' do
    expect(@order).to be_valid
  end

end
