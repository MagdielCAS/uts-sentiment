require 'net/http'
require 'uri'
require 'json'

uri = URI.parse("https://es.bm3.elife.com.br/edit_post.json?key=m07633i5t65Rh3L7chS8374z8kidDSrqU671WJL85s16IFHSax143q28e4S6E75z")
request = Net::HTTP::Post.new(uri)
request.content_type = "text/plain"
request["Pragma"] = "no-cache"
request["Origin"] = "https://app.buzzmonitor.com.br"
request["Accept-Language"] = "pt,en-US;q=0.8,en;q=0.6"
request["User-Agent"] = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36"
request["Accept"] = "*/*"
request["Cache-Control"] = "no-cache"
request["Referer"] = "https://app.buzzmonitor.com.br/reports/58860cac626d2d4509218a00"
request["Connection"] = "keep-alive"
request.body = JSON.dump(JSON.parse('{  
   "authentication_params":{  
      "bm_user":"100000724400369",
      "api_key":"pu81POMG7OLjgZoaurt4Mw"
   },
   "buzzmonitor_username":"100000724400369",
   "changes":{  
      "monitoring_posts":[  
         {  
            "other_pages":false,
            "brand":"sousalealfabiog_vasco",
            "login":"sousalealfabiog",
            "source":"im",
            "posts":[  
               {  
                  "elasticsearch_index":"bm-posts-saas-2017-3",
                  "elasticsearch_id":"instagram-sousalealfabiog_vasco-1477513864757002159_1431780633",
                  "sentiment":"positive",
                  "tags_to_add":[  
                     {  
                        "_id":"583f2822626d2d6223cf1500",
                        "created_at":"2016-11-30T17:27:30.774-02:00",
                        "deleted_at":null,
                        "name":"Sentiment_Edited",
                        "owner_id":"582231db626d2d015ed71f00",
                        "source":null,
                        "sub_tags":[  

                        ],
                        "updated_at":"2016-11-30T17:27:30.774-02:00",
                        "value":"20170324121744_add_time_to_tag_func###100000724400369_add_username_to_tag_func###",
                        "selection":"blank",
                        "user_login":"sousalealfabiog"
                     }
                  ],
                  "tags_to_edit":[  

                  ],
                  "tags_to_remove":[  

                  ],
                  "page_id":null
               }
            ]
         }
      ],
      "twitter_dms":[  

      ],
      "twitter_mentions":[  

      ],
      "facebook_pages_wall":[  

      ],
      "facebook_private_messages":[  

      ],
      "linkedin_updates":[  

      ]
   }
}'))

req_options = {
  use_ssl: uri.scheme == "https",
}

response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|
  http.request(request)
end

puts response.code

# response.code
# response.body