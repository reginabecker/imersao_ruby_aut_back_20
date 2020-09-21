class Authors
    include HTTParty

    headers 'Content-Type' => 'application/json'
    base_uri 'http://fakerestapi.azurewebsites.net'

    def get_author_by_book(idBook)
        self.class.get("/authors/books/#{idBook}")
    end

    def get_authors
        self.class.get('/api/Authors')
    end

    def post_author(author)
        self.class.post('/api/Authors', body: author.to_json)
    end

    def delete_author(id)
        self.class.delete("/api/Authors/#{id}")
    end

    def get_author_by_id(id)
        self.class.get("/api/Authors/#{id}")
    end

    def put_author(author)
        self.class.put("/api/Authors/#{author.id}", body: author.to_json)
    end
end