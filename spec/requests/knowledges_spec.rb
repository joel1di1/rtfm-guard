# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/knowledges' do
  # This should return the minimal set of attributes required to create a valid
  # Knowledge. As you add validations to Knowledge, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Knowledge.create! valid_attributes
      get knowledges_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      knowledge = Knowledge.create! valid_attributes
      get knowledge_url(knowledge)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_knowledge_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'renders a successful response' do
      knowledge = Knowledge.create! valid_attributes
      get edit_knowledge_url(knowledge)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Knowledge' do
        expect do
          post knowledges_url, params: { knowledge: valid_attributes }
        end.to change(Knowledge, :count).by(1)
      end

      it 'redirects to the created knowledge' do
        post knowledges_url, params: { knowledge: valid_attributes }
        expect(response).to redirect_to(knowledge_url(Knowledge.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Knowledge' do
        expect do
          post knowledges_url, params: { knowledge: invalid_attributes }
        end.not_to change(Knowledge, :count)
      end

      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post knowledges_url, params: { knowledge: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested knowledge' do
        knowledge = Knowledge.create! valid_attributes
        patch knowledge_url(knowledge), params: { knowledge: new_attributes }
        knowledge.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the knowledge' do
        knowledge = Knowledge.create! valid_attributes
        patch knowledge_url(knowledge), params: { knowledge: new_attributes }
        knowledge.reload
        expect(response).to redirect_to(knowledge_url(knowledge))
      end
    end

    context 'with invalid parameters' do
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        knowledge = Knowledge.create! valid_attributes
        patch knowledge_url(knowledge), params: { knowledge: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested knowledge' do
      knowledge = Knowledge.create! valid_attributes
      expect do
        delete knowledge_url(knowledge)
      end.to change(Knowledge, :count).by(-1)
    end

    it 'redirects to the knowledges list' do
      knowledge = Knowledge.create! valid_attributes
      delete knowledge_url(knowledge)
      expect(response).to redirect_to(knowledges_url)
    end
  end
end
