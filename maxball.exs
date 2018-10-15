defmodule Maxball do

  @half_gravity 0.04905
  @interval 1
  @tenthsec_in_hour 36000
  @meters_in_kilometer 1000

  def max_ball(v0) do
    v0
    |> kmh_to_mpts
    |> find_max(0, 0)
  end

  defp kmh_to_mpts(v) do
    v * @meters_in_kilometer / @tenthsec_in_hour
  end

  defp find_max(v0, t, prev_h) do
    h = calculate_height(v0, t + @interval)
    if h < prev_h do
      t
    else
      find_max(v0, t + @interval, h)
    end
  end

  defp calculate_height(v, t) do
    v * t - @half_gravity * t * t
  end

end
