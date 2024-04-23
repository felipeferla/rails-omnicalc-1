class MasterController < ApplicationController
  def do_square_form
    render({ :template => "calculator/square/square_new" })
  end

  def calc_square
    @num_to_square = params.fetch("to-square").to_f
    @square = @num_to_square ** 2

    render({ :template => "calculator/square/square_results" })
  end

  def do_square_root_form
    render({ :template => "calculator/square_root/square_root_new" })
  end

  def calc_square_root
    @num_to_square_root = params.fetch("to-square-root").to_f
    @root = @num_to_square_root ** (1.0 / 2)
    render({ :template => "calculator/square_root/square_root_results" })
  end

  def do_payment_form
    render({ :template => "calculator/payment/payment_new" })
  end

  def calc_payment
    @apr = params.fetch("apr").to_f
    @apr_adj = @apr / 100 / 12
    @n = params.fetch("years").to_i
    @n_adj = @n * 12
    @principal = params.fetch("principal").to_i

    @payment = @apr_adj * @principal / (1 - (1 + @apr_adj) ** -@n_adj)
    render({ :template => "calculator/payment/payment_results" })
  end

  def do_random_form
    render({ :template => "calculator/random/random_new" })
  end

  def calc_random
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @result = rand(@min..@max)
    render({ :template => "calculator/random/random_results" })
  end
end
