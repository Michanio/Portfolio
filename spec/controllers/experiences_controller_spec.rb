require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ExperiencesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Experience. As you add validations to Experience, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
     FactoryGirl.build(:experience).attributes.select {|k,v| ['company', 'description', 'start_date'].include?(k)}
  }

  let(:invalid_attributes) {
     FactoryGirl.build(:experience, company: nil).attributes.select {|k,v| ['company', 'description', 'start_date'].include?(k)}
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ExperiencesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all experiences as @experiences" do
      experience_1, experience_2 = Experience.create!(valid_attributes), Experience.create!(valid_attributes)
      get :index, {}, valid_session
      expect(assigns(:experiences)).to eq([experience_1, experience_2])
    end
  end

  describe "GET #show" do
    it "assigns the requested experience as @experience" do
      experience = Experience.create! valid_attributes
      get :show, {:id => experience.to_param}, valid_session
      expect(assigns(:experience)).to eq(experience)
    end
  end

  describe "GET #new" do
    it "assigns a new experience as @experience" do
      get :new, {}, valid_session
      expect(assigns(:experience)).to be_a_new(Experience)
    end
  end

  describe "GET #edit" do
    it "assigns the requested experience as @experience" do
      experience = Experience.create! valid_attributes
      get :edit, {:id => experience.to_param}, valid_session
      expect(assigns(:experience)).to eq(experience)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Experience" do
        expect {
          post :create, {:experience => valid_attributes}, valid_session
        }.to change(Experience, :count).by(1)
      end

      it "assigns a newly created experience as @experience" do
        post :create, {:experience => valid_attributes}, valid_session
        expect(assigns(:experience)).to be_a(Experience)
        expect(assigns(:experience)).to be_persisted
      end

      it "redirects to the created experience" do
        post :create, {:experience => valid_attributes}, valid_session
        expect(response).to redirect_to(Experience.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved experience as @experience" do
        post :create, {:experience => invalid_attributes}, valid_session
        expect(assigns(:experience)).to be_a_new(Experience)
      end

      it "re-renders the 'new' template" do
        post :create, {:experience => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        FactoryGirl.build(:experience).attributes.select {|k,v| ['company', 'description', 'start_date', 'end_date'].include?(k)}
      }
      
      it "updates the requested experience" do
        experience = Experience.create! valid_attributes
        put :update, {:id => experience.to_param, :experience => new_attributes}, valid_session
        experience.reload
        expect(response).to have_http_status(:redirect)
      end

      it "assigns the requested experience as @experience" do
        experience = Experience.create! valid_attributes
        put :update, {:id => experience.to_param, :experience => valid_attributes}, valid_session
        expect(assigns(:experience)).to eq(experience)
      end

      it "redirects to the experience" do
        experience = Experience.create! valid_attributes
        put :update, {:id => experience.to_param, :experience => valid_attributes}, valid_session
        expect(response).to redirect_to(experience)
      end
    end

    context "with invalid params" do
      
      
      it "assigns the experience as @experience" do
        experience = Experience.create! valid_attributes
        put :update, {:id => experience.to_param, :experience => invalid_attributes}, valid_session
        expect(assigns(:experience)).to eq(experience)
      end

      
      it "re-renders the 'edit' template" do
        experience = Experience.create! valid_attributes
        put :update, {:id => experience.to_param, :experience => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested experience" do
      experience = Experience.create! valid_attributes
      expect {
        delete :destroy, {:id => experience.to_param}, valid_session
      }.to change(Experience, :count).by(-1)
    end

    it "redirects to the experiences list" do
      experience = Experience.create! valid_attributes
      delete :destroy, {:id => experience.to_param}, valid_session
      expect(response).to redirect_to(experiences_url)
    end
  end

end
