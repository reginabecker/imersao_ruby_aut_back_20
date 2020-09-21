# imersao_ruby_aut_back_20
Projeto de automação com Ruby/Cucumber/HTTParty/RSPEC para a semana de imersão do GUTS 2020

Criado o Gemfile

No terminal executar
bundle install
cucumber --init
git status
git add .
git commit -m "Configuração inicial"
git push
cucumber -t @healtcheck

# Criar uma branch 
git checkout -b authors_healthcheck
git status
git add .
git commit -m "Cenários da feature author healthcheck"
git push -u origin authors_healthcheck