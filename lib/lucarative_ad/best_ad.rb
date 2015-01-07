module LucarativeAd
  class BestAd
    SIZES = ["1*3", "2*3", "3*3"]

    def initialize(file=nil)
      @file = file
      file_errors_any?
      @lucarative_advertisement = YAML.load_file(file)
      raise LucarativeAd::Error.ad_missing unless @lucarative_advertisement.keys.eql?(SIZES)
    end

    def best
      size_one_max_price =  @lucarative_advertisement["1*3"]["prices"].max
      size_two_max_price = @lucarative_advertisement["2*3"]["prices"].max
      size_three_max_price = @lucarative_advertisement["3*3"]["prices"].max

      if (size_one_max_price + size_two_max_price > size_three_max_price)
        {"1*3" => size_one_max_price, "2*3" =>  size_two_max_price}
      else
        {"3*3" => size_three_max_price}
      end
    end

    # checking error for input file
    def file_errors_any?
      raise LucarativeAd::Error.file_type unless File.extname(@file) == ".yml"
      raise LucarativeAd::Error.file_read unless File.exist? @file
    end
  end
end