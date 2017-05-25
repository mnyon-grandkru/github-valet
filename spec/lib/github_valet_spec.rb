require 'spec_helper'

describe GithubValet do 
  describe '.readme_md_exists_for?(repository)' do
    describe 'on success' do
      it 'returns true if the Github repository has a README file' do
        github_repo_url = "trystant/respository-observer"
        expect(GithubValet.readme_md_exists_for?(github_repo_url)).to be_truthy
      end
    end
    
    describe 'on failure' do
      it 'returns false if the Github repository does not exist' do
        github_repo_url = 'blah/wrong-repo'
        expect(GithubValet.readme_md_exists_for?(github_repo_url)).to be_falsey
      end
    end
  end
end