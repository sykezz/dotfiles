if command -v rbenv >/dev/null 2>&1; then
  eval "$(rbenv init - zsh)"
fi

export RAILS_ENV=development

alias rb="bundle exec"
alias rbs="bundle exec rails server"
alias rbc="bundle exec rails console"
alias rspec="bundle exec rspec"
alias rbmtest='RAILS_ENV=test bundle exec rake db:migrate'
alias rbmdev='RAILS_ENV=development bundle exec rake db:migrate'
