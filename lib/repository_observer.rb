module RepositoryObserver
  require 'repository_observer/version'
  require 'octokit'
  
  def self.readme_md_exists_for?(repository) 
    Octokit.readme(repository).is_a?(Sawyer::Resource)
  rescue StandardError => error
    p "Error fetching repo: #{error}"
    false
  end
end