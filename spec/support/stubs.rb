module Stubs
  def default_stubs
    stub_request(:get, /example.quandora.com/).
      with(headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'User-Agent'=>'Faraday v0.17.1'
      }).
      to_return(status: 200, body: "", headers: {})

    stub_request(:post, /example.quandora.com/).
      with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(status: 201, body: "", headers: {})

    stub_request(:put, /example.quandora.com/).
      with(headers: {'Accept'=>'*/*', 'User-Agent'=>'Ruby'}).
      to_return(status: 201, body: "", headers: {})

    stub_request(:post, "https://example.quandora.com/m/json/q/94114b76-9189-405e-87c3-6d0311840d05/vote").
      with(
        body: "{\"type\":\"boolean\",\"data\":null}",
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 201, body: "", headers: {})
    
    stub_request(:post, "https://example.quandora.com/m/json/q/94114b76-9189-405e-87c3-6d0311840d05/answer").
      with(
        body: "{\"type\":\"post-answer\",\"data\":{\"content\":null,\"contentType\":null}}",
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 201, body: "", headers: {})

    stub_request(:put, "https://example.quandora.com/m/json/q/94114b76-9189-405e-87c3-6d0311840d05/comment").
      with(
        body: "{:type=>\"post-comment\", :data=>{:content=>nil, :hash=>nil}}",
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 201, body: "", headers: {})

    stub_request(:post, "https://example.quandora.com/m/json/q/94114b76-9189-405e-87c3-6d0311840d05/comment").
      with(
        body: "{:type=>\"post-comment\", :data=>{:content=>nil}}",
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 201, body: "", headers: {})

    stub_request(:delete, "https://example.quandora.com/m/json/q/94114b76-9189-405e-87c3-6d0311840d05/comment/94114b76-9189-405e-87c3-6d0311840d05").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 200, body: "", headers: {})
    
    stub_request(:put, "https://example.quandora.com/q/94114b76-9189-405e-87c3-6d0311840d05/tags/tag1,tag2,tag3").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'Content-Length'=>'0',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 201, body: "", headers: {})
    
    stub_request(:post, "https://example.quandora.com/q/94114b76-9189-405e-87c3-6d0311840d05/tags/tag1,tag2,tag3").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'Content-Length'=>'0',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 201, body: "", headers: {})

    stub_request(:put, "https://example.quandora.com/m/json/kb/94114b76-9189-405e-87c3-6d0311840d05/tags").
      with(
        body: "{:type=>\"tag-content\", :data=>{:content=>nil, :uid=>nil}}",
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 201, body: "", headers: {})
      
    stub_request(:delete, "https://example.quandora.com/m/json/kb/94114b76-9189-405e-87c3-6d0311840d05/tags/tag_name").
      with(
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 200, body: "", headers: {})

    stub_request(:post, "https://example.quandora.com/m/json/kb/94114b76-9189-405e-87c3-6d0311840d05/tags").
      with(
        body: "{:type=>\"tag-content\", :data=>{:name=>\"name\", :category=>nil, :location=>nil, :url=>\"url\", :content=>\"content\"}}",
        headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Authorization'=>'Basic ZXhhbXBsZUBleGFtcGxlLmNvbTpwYXNzd29yZA==',
        'Content-Type'=>'application/json',
        'User-Agent'=>'Faraday v0.17.1'
        }).
      to_return(status: 201, body: "", headers: {})
  end
end