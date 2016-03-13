require 'rails_helper'

describe DeviseOverrides::RegistrationsController do
  before do
    @request.env["devise.mapping"] = Devise.mappings[:user]
    @region = Region.create!(name: 'Neue Region')
  end

  describe "#create" do
    describe 'region selection' do
      let(:user_params) do
        {
          first_name: 'Beep',
          last_name: 'Boop',
          region_ids: [@region.id],
          email: 'boop1@example.com',
          password: 'abc123',
          password_confirmation: 'abc123'
        }
      end

      it "allows user to select a region" do
        expect {
          post :create, params: {user: user_params}
        }.to change(@region.users, :count).by(1)

        # TODO: fixme, currently prints out a big error
        # expect(response).to be_redirect
        expect(User.last.regions).to eq([@region])
      end

      it "does not asplode if user does not select a region" do
        expect {
          post :create, params: {user: user_params.merge(region_ids: [])}
        }.to change(@region.users, :count).by(0)

        # TODO: fixme, currently prints out a big error
        # expect(response).to be_redirect
        expect(User.last.regions).to be_empty
      end
    end
  end
end
