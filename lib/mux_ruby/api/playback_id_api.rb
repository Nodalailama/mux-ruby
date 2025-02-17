=begin
#Mux API

#Mux is how developers build online video. This API encompasses both Mux Video and Mux Data functionality to help you build your video-related projects better and faster than ever before.

The version of the OpenAPI document: v1
Contact: devex@mux.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.1

=end

require 'cgi'

module MuxRuby
  class PlaybackIDApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve an Asset or Live Stream ID
    # Retrieves the Identifier of the Asset or Live Stream associated with the Playback ID.
    # @param playback_id [String] The live stream&#39;s playback ID.
    # @param [Hash] opts the optional parameters
    # @return [GetAssetOrLiveStreamIdResponse]
    def get_asset_or_livestream_id(playback_id, opts = {})
      data, _status_code, _headers = get_asset_or_livestream_id_with_http_info(playback_id, opts)
      data
    end

    # Retrieve an Asset or Live Stream ID
    # Retrieves the Identifier of the Asset or Live Stream associated with the Playback ID.
    # @param playback_id [String] The live stream&#39;s playback ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetAssetOrLiveStreamIdResponse, Integer, Hash)>] GetAssetOrLiveStreamIdResponse data, response status code and response headers
    def get_asset_or_livestream_id_with_http_info(playback_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PlaybackIDApi.get_asset_or_livestream_id ...'
      end
      # verify the required parameter 'playback_id' is set
      if @api_client.config.client_side_validation && playback_id.nil?
        fail ArgumentError, "Missing the required parameter 'playback_id' when calling PlaybackIDApi.get_asset_or_livestream_id"
      end
      # resource path
      local_var_path = '/video/v1/playback-ids/{PLAYBACK_ID}'.sub('{' + 'PLAYBACK_ID' + '}', CGI.escape(playback_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetAssetOrLiveStreamIdResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['accessToken']

      new_options = opts.merge(
        :operation => :"PlaybackIDApi.get_asset_or_livestream_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlaybackIDApi#get_asset_or_livestream_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
