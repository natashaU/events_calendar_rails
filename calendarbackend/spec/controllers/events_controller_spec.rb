require 'rails_helper'

RSpec.describe EventsController, type: :controller do
context 'get #index' do
	it 'returns a success response' do
		get :index
		expect(response).to have_http_status(200)
	end
end

context 'GET #show' do
	it 'returns a success response' do
		event = Event.create!(description: 'halloween', start_time: '1200', end_time: '1300', day_id: '25009')
		get :show, params: {id: event.to_param}
		expect(response).to have_http_status(200)
	end
end

end
