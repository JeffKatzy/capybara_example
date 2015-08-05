require 'spec_helper'

describe GithubWrapper do 
  
  describe '#repos' do 
    let(:wrapper) { GithubWrapper.new }

    it 'returns all of the repos'do 
      VCR.use_cassette "github/repos" do
        expect(wrapper.repos).to be_an_instance_of(String)
      end
    end
  end
end