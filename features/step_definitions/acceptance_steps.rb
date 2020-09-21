Então('os autores são os do livro consultado') do
    #para cada item do meu response (@response.each)
    #para cada { |author| da minha lista do (@response.each)
    @response.each { |author| expect(author['IDBook']).to eq(@book['ID']) }
end

Então('os dados do autor cadastrado estão conforme informado') do
    expect(@response['ID']).to eq(@author.id)
    expect(@response['IDBook']).to eq(@author.idbook)
    expect(@response['FirstName']).to eq(@author.firstname)
    expect(@response['LastName']).to eq(@author.lastname)
end