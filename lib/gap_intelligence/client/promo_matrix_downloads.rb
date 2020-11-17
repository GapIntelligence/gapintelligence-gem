module GapIntelligence
  # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix_downloads.html
  module PromoMatrixDownloads
    # Creates new promo matrix download
    #
    # @param owner_id [String,Integer] owner id of the download
    # @param params [Hash] parameters that will be the JSON payload of the http request
    # @param options [Hash] options the options to make the request with
    # @yield [request] The Faraday request
    # @return [PromoMatrixDownload] the created promo matrix download
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix_downloads/create.html
    def create_promo_matrix_download(owner_id, params, options = {}, &block)
      default_option(options, :record_class, PromoMatrixDownload)
      perform_request(:post, 'promo_matrix_downloads', options.merge(body: { owner_id: owner_id, promo_matrix_download: params }), &block)
    end

    # Requests and returns promo matrix downloads
    #
    # @param owner_id [String,Integer] owner id of the promo matrix downloads
    # @param params [Hash] parameters of the http request
    # @param options [Hash] options for the http request
    # @yield [request] The Faraday request
    # @return [RecordSet<PromoMatrixDownload>] collection of promo matrix downloads
    # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix_downloads/index.html
    def promo_matrix_downloads(owner_id, params = {}, options = {}, &block)
      default_option(options, :record_class, PromoMatrixDownload)
      perform_request(:get, 'promo_matrix_downloads', options.merge(params: params.merge(owner_id: owner_id)), &block)
    end

    # Requests and returns a promo matrix download
    #
    # @param owner_id [String,Integer] owner id of the promo matrix downloads
    # @param download_id [String,Integer] id of the promo matrix download
    # @param options [Hash] options for the http request
    # @yield [request] The Faraday request
    # @return [PromoMatrixDownload] the requested promo matrix download
    # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix_downloads/show.html
    def promo_matrix_download(owner_id, download_id, options = {}, &block)
      default_option(options, :record_class, PromoMatrixDownload)
      perform_request(:get, build_resource_path('promo_matrix_downloads', download_id), options.merge(params: { owner_id: owner_id }), &block)
    end

    # Deletes promo matrix downloads
    #
    # @param owner_id [String,Integer] owner id of the promo matrix downloads
    # @param download_ids [Integer] id of the promo matrix downloads
    # @param options [Hash] the options to make the request with
    # @yield [request] The Faraday request
    # @return [Hash] Response
    # @return [RequestError] error messages
    # @see https://api.gapintelligence.com/api/doc/v1/promo_matrix_downloads/destroy.html
    def delete_promo_matrix_download(owner_id, download_ids, options = {}, &block)
      perform_request(:delete, 'promo_matrix_downloads', options.merge(body: { owner_id: owner_id, ids: download_ids }), &block)
    end
  end
end
