AsyncRailsFaraday::Application.routes.draw do
  match 'em_http' => 'main#em_http'
  match 'em_synchrony' => 'main#em_synchrony'
  match 'net_http' => 'main#net_http'
end
