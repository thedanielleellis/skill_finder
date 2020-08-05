class APIService 
    BASE_URI = "https://www.eventbriteapi.com/v3"

    #fetch based on skill name
    def fetch_skill_by_name
        uri = 
    end 

    #Secondary method to make a return request 
    def make_request(uri)
        response = NET::HTTP.get_response(uri)
        JSON.parse(response.body)
    end
end 