::LucarativeAd::

This ruby script is to choose the best ad to display for the banner size of 3*3.


Prequisite:

1. Ruby 2.0
2. Input file with name "file_inputs.yml"
3. Input file should have all the banner size and corresponding valid prices

Steps to run:

1. Untar the file
2. ruby DIR_pATH/LucarativeAd/program.rb

SAMPLE O/P:

Best banner is
 {"3*3"=>5000}


Features Pending:

1. Need to add more error handling features
2. Need to add unit test cases




STEPS TO IMPLEMENT IN RAILS WITH MODEL :

1. Create an model to store banner size and prices
   rails g model banner size:string price:float
2. Seed some dummy data in to the model
    Banner.create(size: "3*3", price: 3000)
    Banner.create(size: "3*3", price: 5000)
    Banner.create(size: "1*3", price: 1000)
    Banner.create(size: "2*3", price: 2500)
3. Execute the below query to get addof different sizes with maximum price

    Banner.group(:size).maximum('price')
4. Then implement the logic to check whether sum of 1*3 and 2*3 is > 3*3 and output the banner based on it
