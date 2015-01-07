module LucarativeAd
  module Error

    class << self

      def file_type
        "\n File should be a Yaml file"
      end

      def file_read
        "\n File doesn't exist"
      end

      def ad_missing
        "\n Include all the ad sizes in the input file"
      end
    end
  end

end
