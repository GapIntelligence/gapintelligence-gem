require 'spec_helper'

describe GapIntelligence::PromoMatrix do
  before { stub_api_auth('CLIENTID', 'ASECRET') }
  subject(:client) { GapIntelligence::Client.new(client_id: 'CLIENTID', client_secret: 'ASECRET') }

  describe '#promo_matrix_product_versions' do
    let(:params){ { category_version_id: 1, merchant_id: 1, start_at: '2020-01-01', end_at: '2020-02-01' } }
    before { stub_api_request(:post, url: '/promo_matrix/product_versions', response: { data: build_list(:promo_matrix_product_version, 3) }) }
    subject(:record_set) { client.promo_matrix_product_versions(params) }

    it 'requests the endpoint' do
      client.promo_matrix_product_versions(params)

      expect(api_post('/promo_matrix/product_versions').with(body: { category_version_id: 1.to_s, merchant_id: 1.to_s, start_at: '2020-01-01', end_at: '2020-02-01' })).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::PromoMatrixProductVersion)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#promo_matrix_product_placements' do
    let(:params){ { product_version_id: 1, start_at: '2020-01-01', end_at: '2020-02-01' } }
    before { stub_api_request(:post, url: '/promo_matrix/product_placements', response: { data: build_list(:promo_matrix_product_version, 3) }) }
    subject(:record_set) { client.promo_matrix_product_placements(params) }

    it 'requests the endpoint' do
      client.promo_matrix_product_placements(params)

      expect(api_post('/promo_matrix/product_placements').with(body: { product_version_id: 1.to_s, start_at: '2020-01-01', end_at: '2020-02-01' })).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::PromoMatrixProductVersion)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end

  describe '#promo_matrix_pricings' do
    let(:params){ { product_version_id: 1, merchant_id: 1, start_at: '2020-01-01', end_at: '2020-02-01' } }
    before { stub_api_request(:get, response: { data: build_list(:promo_matrix_pricing, 3) }) }
    subject(:record_set) { client.promo_matrix_pricings(params) }

    it 'requests the endpoint' do
      client.promo_matrix_pricings(params)

      expect(api_get('/promo_matrix/pricings', query: params)).to have_been_made
    end

    it 'returns record set' do
      expect(record_set).to be_instance_of(GapIntelligence::RecordSet)
    end

    it 'returns set of specified type' do
      expect(record_set).to all be_an(GapIntelligence::PromoMatrixPricing)
    end

    it 'contains proper count of elements' do
      expect(record_set.count).to eq(3)
    end
  end
end
