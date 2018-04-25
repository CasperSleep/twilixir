defmodule Twilixir.MessengerTest do
  use ExUnit.Case

  setup_all do
    Application.put_env :twilixir, :sid, "sid_1234"
    Application.put_env :twilixir, :token, "token_1234"
  end

  test "request url" do
    expected =  "https://api.twilio.com/2010-04-01/Accounts/sid_1234/Messages.json"
    assert Twilixir.Messenger.request_url == expected
  end

  test "auth_key" do
    expected = [basic_auth: {"sid_1234", "token_1234"}]
    assert Twilixir.Messenger.auth_key == expected
  end

  test "process_body" do
    body = "{\"json\": \"json\"}"
    expected = %{json: "json"}

    assert Twilixir.Messenger.process_response_body(body) == expected
  end
end
