Dado('que faco uma requisicao GET para o endpoint de obter autores') do 
    @response = @services.authors.get_authors
    #puts @response
end 

Dado('que faco uma requisicao GET para o endpoint de obter autores por livro') do 
    #sample quer dizer qualquer livro da listagem
    @book = @services.books.get_books.sample
    puts @book
    @response = @services.authors.get_author_by_book @book['ID']
    puts @response
end 

Dado('que faco uma requisicao POST para o endpoint de cadastrar autor') do 
    @author = Author.new
    puts @author.id = Faker::Number.number(digits: 4)
    puts @author.idbook = @services.books.get_books.sample['ID']
    puts @author.firstname = Faker::Name.first_name
    puts @author.lastname = Faker::Name.last_name
    @response = @services.authors.post_author @author
    puts @response
end 

Dado("que faco uma requisicao GET para o endpoint de obter autores com id do autor") do
    #sample quer dizer qualquer livro da listagem
    @author = @services.get_authors.sample
    puts @author
    @response = @services.authors.get_author_by_id @author['ID']
    puts @response
end

Dado('que faco uma requisicao PUT para o endpoint de editar autor') do 
    @author = Author.new
    @author = @services.get_authors.sample
    puts @author
    puts @author.firstname = Faker::Name.first_name
    puts @author.lastname = Faker::Name.last_name
    @response = @services.authors.put_author @author['ID']
    puts @response
end   

Dado('que faco uma requisicao DELETE para o endpoint de excluir autor') do 
    @author = @services.get_authors.sample
    puts @author
    @response = @services.authors.delete_author @author['ID']
    puts @response
end       

Então('o status de resposta e {int}') do |status|
    expect(@response.code).to eq status
end 