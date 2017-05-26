require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
 
	describe "#show" do
	  let(:item) { Item.create({size:'s', color:'blue', status:'unsold'}) }

	  it "renders the :show view" do
	    get :show, id: item.id
	    expect(response).to render_template(:show)
	  end

	  it "assigns @item" do
	    get :show, id: item.id
	    expect(assigns(:item)).to eq(item)
	  end
	end
	
end