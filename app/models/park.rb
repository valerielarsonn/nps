class Park < ApplicationRecord
    HOST = 'https://developer.nps.gov/api/v1/parks?&api_key=cdgjmt09KDFy4NRLi7OqQ02jhN37uSne53dnzURZ'.freeze

    class << self
        def find(id)
            conn = Faraday.new(url: "{HOST}")
            JSON.parse(res.body)
        end
    end
end
