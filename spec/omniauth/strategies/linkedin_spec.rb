require 'spec_helper'

describe "OmniAuth::Strategies::tenzing" do
  subject do
    OmniAuth::Strategies::Tenzing.new(nil, @options || {})
  end

  it 'should add a camelization for itself' do
    OmniAuth::Utils.camelize('tenzing').should == 'tenzing'
  end

  context 'client options' do
    it 'has correct tenzing site' do
      subject.options.client_options.site.should eq('https://api.tenzing.com')
    end

    it 'has correct request token path' do
      subject.options.client_options.request_token_path.should eq('/uas/oauth/requestToken')
    end

    it 'has correct access token path' do
      subject.options.client_options.access_token_path.should eq('/uas/oauth/accessToken')
    end

    it 'has correct authorize url' do
      subject.options.client_options.authorize_url.should eq('https://www.tenzing.com/uas/oauth/authenticate')
    end
  end

  context '#uid' do
    before :each do
      subject.stub(:raw_info) { { 'id' => '123' } }
    end

    it 'returns the id from raw_info' do
      subject.uid.should eq('123')
    end
  end

  context 'returns info hash conformant with omniauth auth hash schema' do
    before :each do
      subject.stub(:raw_info) { {} }
    end

    context 'and therefore has all the necessary fields' do
      it {subject.info.should have_key :name}
      it {subject.info.should have_key :name}
      it {subject.info.should have_key :email}
      it {subject.info.should have_key :nickname}
      it {subject.info.should have_key :first_name}
      it {subject.info.should have_key :last_name}
      it {subject.info.should have_key :location}
      it {subject.info.should have_key :description}
      it {subject.info.should have_key :image}
      it {subject.info.should have_key :phone}
      it {subject.info.should have_key :urls}
    end
  end
end
