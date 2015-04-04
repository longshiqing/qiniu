defmodule Qiniu do
  @moduledoc """
  Top module of this package. For configuration at this moment.
  """

  @doc """
  Get config data.

  ## Examples

  Config in your config.exs

      config :qiniu, Qiniu,
        access_key: "key",
        secret_key: "secret"

  You can fetch the config if you want as

      Qiniu.config[:access_key]

  """
  def config do
    Keyword.merge(default_config, Application.get_env(:qiniu, Qiniu, []))
  end

  defp default_config do
    [
      user_agent:       "QiniuElixir/#{Qiniu.Mixfile.project[:version]}/Ruby/#{System.version}",
      content_type:     "application/x-www-form-urlencoded",
      up_host:          "http://up.qiniu.com",
    ]
  end
end
