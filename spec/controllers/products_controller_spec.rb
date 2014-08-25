require 'spec_helper'

describe ProductsController do
  describe "#create" do
      subject { post :create, {:product =>
                                   {:name => "Digital Fortress",
                                    :description => "Good",
                                    :price => 1}
                              }

      }

      its(:status) { should == 302 } # redirect
    
    
    it "saves the product" do
      subject
      Product.all.count.should_not == 0
    end

    #it "should redirect to show the created product" do
    #  subject.should redirect_to(product_path(Product.first.id))
    #end
  end



  describe "#new" do
    context "when invalid name" do
      
        subject { post :create, {:product =>
                                     {
                                      :description => "Ho Quality",
                                      :price => 1}} }
        its(:status) { should == 200 } # OK
      
      

      it "should render the new view" do
        subject
        response.should render_template("new")
      end
    end
  end

  describe "#show" do
    context "when the product exists" do
      let(:product) { Product.create(
          :name => "Digital Fortress", :description => "Good", :price => 1)
      }
      subject { get :show, :id => product.id }
      it "assigns @product" do
        subject
        assigns(:product).should eq(product)
      end

      it "renders the show template" do
        subject
        response.should render_template("show")
      end
    end

    context "when the product does not exist" do
      subject { get :show, :id => 404 }
      its(:status) { should == 404 }
    end
  end

  describe "#index" do
    context "when there are some products" do
      let(:products) do
        [
            FactoryGirl.create(:product)
        ]
      end

      before { products }
        subject { get :index }
        it "assigns @products" do
          subject
          assigns(:products).should include(*products)
        end

        it "renders the index template" do
          subject
          response.should render_template("index")
        end
      end

    context "when there are no products" do
      let(:products) do
        [
            FactoryGirl.create(:product)
        ]
      end

      subject { get :index }

      it "assigns @products" do
        subject
        assigns(:products).should_not eq([])
      end
    end

    
  end

  

end
