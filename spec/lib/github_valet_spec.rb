require 'spec_helper'

describe GithubValet do

  describe '#readme_md_exists_for?(repository)' do
    describe 'on success' do
      it 'returns true if the Github repository has a README file' do
        github_repo_url = "trystant/github-valet"
        expect(subject.readme_md_exists_for?(github_repo_url)).to be_truthy
      end
    end

    describe 'on failure' do
      it 'returns false if the Github repository does not exist' do
        github_repo_url = 'blah/wrong-repo'
        expect(subject.readme_md_exists_for?(github_repo_url)).to be_falsey
      end
    end
  end

  describe '#find_repos_without_readme' do
    describe 'on success' do
      it 'returns number of repos checked & those without README.md files' do

        repos_mock = [
          {
            qname: 'unicorn_startup',
            owner: {
              login: 'superdev'
            }
          },
           {
            name: 'enterprise_company_project',
            owner: {
              login: 'superdev'
            }
          }
        ]

        client_mock = {
          repositories: repos_mock
        }
        expect(Octokit::Client).to receive(:new).at_least(2).times.and_return(client_mock)
        expect(client_mock).to receive(:repositories).and_return(repos_mock)
        expect(subject).to receive(:readme_md_exists_for?).once.and_return(true)
        expect(subject).to receive(:readme_md_exists_for?).once.and_return(false)
        expect(subject.find_repos_without_readme).to match("superdev/enterprise_company_project has no README.md")
      end
    end
  end

   describe '#find_user_repos_without_readme' do
    describe 'on success' do
      it 'returns number of user repos checked & those without README.md files' do

        repos_mock = [
          {
            qname: 'unicorn_startup',
            owner: {
              login: 'superdev'
            }
          },
           {
            name: 'enterprise_company_project',
            owner: {
              login: 'superdev'
            }
          }
        ]

        client_mock = {
          repositories: repos_mock
        }
        expect(Octokit::Client).to receive(:new).at_least(2).times.and_return(client_mock)
        expect(client_mock).to receive(:repositories).and_return(repos_mock)
        expect(subject).to receive(:readme_md_exists_for_user_repo?).once.and_return(true)
        expect(subject).to receive(:readme_md_exists_for_user_repo?).once.and_return(false)
        expect(subject.find_user_repos_without_readme).to match("superdev/enterprise_company_project has no README.md")
      end
    end
  end
end

