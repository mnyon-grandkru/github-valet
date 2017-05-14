require 'spec_helper'

describe RepositoryObserver do 
  describe '.readme_md_exists_for?(repository)' do
    describe 'on success' do
      it 'returns true if the Github repository has a README file' do
        github_repo_url = "git@github.com:trystant/respository-observer.git"
        expect(RepositoryObserver.readme_md_exists_for?(github_repo_url)).to be_true
      end
    end
  end
end