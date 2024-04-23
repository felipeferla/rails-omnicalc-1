Rails.application.routes.draw do
  get("/", { :controller => "master", :action => "do_square_form" })

  get("/square/new", { :controller => "master", :action => "do_square_form" })

  get("/square/results", { :controller => "master", :action => "calc_square" })



  get("square_root/new", { :controller => "master", :action => "do_square_root_form" })

  get("square_root/results", { :controller => "master", :action => "calc_square_root" })



  get("payment/new", { :controller => "master", :action => "do_payment_form" })

  get("payment/results", { :controller => "master", :action => "calc_payment" })


  get("random/new", { :controller => "master", :action => "do_random_form" })

  get("random/results", { :controller => "master", :action => "calc_random" })
end
