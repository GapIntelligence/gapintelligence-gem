module GapIntelligence
  module Downloads
    # Creates new download
    #
    # @param [Hash] params the body of the request
    # @option params [Integer] :owner_id request the download on behalf of this owner id
    # @option params [Hash]    :filter limit records used to generate tables
    #   * :categories (Array)  category identifiers
    #   * :countries  (Array)  filter records by country. Use two letter shortcodes: "US", "UK" etc
    #   * :merchants  (Array)  merchant identifiers. If blank, will return records for all merchants
    #   * :channels   (Array)  filter by an array of channels. Use "ECom", "Retail", "RetailDotCom", "Direct" in any combination. If blank, will return records for all channels.
    #   * :brands     (Array)  brand names. If blank, will return records for all brands
    #   * :start_at   (String) only retrieve records that are relevant after this date
    #   * :end_at     (String) only retrieve records that are relelvant before this date
    # @option params [String]  :file_type either "csv" or "xlsx"
    # @option params [Array]   :advertisements_headers ([]) create a table of advertisement records with these columns
    # @option params [Array]   :pricings_headers ([]) create a table of pricings with these columns
    # @option params [Array]   :promotions_headers ([]) create a table of promotions with these columns
    # @option params [String]  :pricing_date resolve prices to this date. Use one of "date_collected", "week_of_sunday", "month", "quarter"
    # @option params [String]  :pricing_date_type resolve duplicate prices using this strategy. Use one of "raw", "lowest", "highest", "most_recent", "mode", "median", "an_average"
    # @option params [Array]   :included_core_spec_headers ([]) include these columns for these specification values in any table
    # @option params [Array]   :included_spec_headers include these columns for these specification values in other tables
    # @option params [Array]   :standalone_core_spec_headers create a table of products with columns for these specification values
    # @option params [Array]   :standalone_spec_headers create a table of products with columns for these specification values
    # @option params [Array]   :product_info_fields_headers include a table of product information with these columns
    # @option params [String]  :custom_file_name give the downloaded file a custom name
    # @param [Hash] options the options to make the request with
    # @yield [request] The Faraday request
    # @return [Download] the created download
    # @return [RequestError] error messages
    def create_download(params, options = {}, &block)
      perform_request(:post, 'downloads', options.merge(body: { download: params }, record_class: Download), &block)
    end

    # Requests and returns downloads
    #
    # @param [Hash] options the options to make the request with
    # @yield [request] The Faraday request
    # @return [RecordSet<Download>] collection of downloads
    def downloads(options = {}, &block)
      perform_request(:get, 'downloads', options.merge(record_class: Download), &block)
    end
  end
end
