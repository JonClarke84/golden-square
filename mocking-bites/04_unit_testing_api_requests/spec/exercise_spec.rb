require 'exercise'

RSpec.describe TimeError do
  it 'calculates time difference' do
    requester_dbl = double :requester
    allow(requester_dbl).to receive(:get).with(
      URI("https://worldtimeapi.org/api/ip")
    ).and_return('{"abbreviation":"GMT","client_ip":"2a02:c7e:4c1c:9d00:4c2:2a1:9c14:fec7","datetime":"2022-03-15T16:01:52.748667+00:00","day_of_week":2,"day_of_year":74,"dst":false,"dst_from":null,"dst_offset":0,"dst_until":null,"raw_offset":0,"timezone":"Europe/London","unixtime":1647360112,"utc_datetime":"2022-03-15T16:01:52.748667+00:00","utc_offset":"+00:00","week_number":11}')

    time = Time.new(2022, 03, 15, 16, 01, 22)
    time_error = TimeError.new(requester_dbl)
    expect(time_error.error(time)).to eq 30.748667
  end
end