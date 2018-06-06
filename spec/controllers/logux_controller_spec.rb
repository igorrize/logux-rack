# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LoguxController, type: :controller do
  subject do
    post(:create,
         body: { events: [['action', { type: 'comment/add' }]] }.to_json,
         as: :json)
  end

  it 'works' do
    expect(subject).to have_http_status(:ok)
  end
end