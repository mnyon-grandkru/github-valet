module GithubValet
  require 'github_valet/version'
  require 'octokit'
  require 'pry-byebug'
  def self.readme_md_exists_for?(repository) 
    Octokit.readme(repository).is_a?(Sawyer::Resource)
  rescue StandardError => error
    p "Error fetching repo: #{error}"
    false
  end
  
  def self.find_repos_without_readme
    results = ""
    client = Octokit::Client.new(:netrc => true) 
    client.repositories('trystant').map { |repo| 
      "#{repo[:owner][:login]}/#{repo[:name]}" 
    }.each do |repo_string|
      unless self.readme_md_exists_for?(repo_string) 
        results += "#{repo_string} has no README.md\n"
      end
    end
    results
  end
end