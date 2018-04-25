# Twilixir [![Build Status](https://www.travis-ci.org/CasperSleep/twilixer.svg?branch=master)](https://www.travis-ci.org/CasperSleep/twilixer)

**Twilixir is an Elixir Client to send SMS/MMS using Twilio. **

## Install

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add twilixir to your list of dependencies in `mix.exs`:

        def deps do
          [{:twilixir, "~> 0.0.1"}]
        end

  2. Ensure twilixir is started before your application:

        def application do
          [applications: [:twilixir]]
        end

## Configure

Add the following to your `config.exs` file:

```
config :twilixir,
  sid: "YOUR_TWILIO_SID",
  token: "YOUR_TWILIO_AUTH_TOKEN"
```

## Send Messages

```
 Twilixir.Messenger.create("from_number", "to_number", "body_text", "optional_media_url")
 
 i.e.
 
 iex(1)> Twilixir.Messenger.create("15005550006", "15005550001", "test text")
```
