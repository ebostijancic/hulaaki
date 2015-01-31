defmodule Hulaaki.Control.Packet do
  defstruct [:type]

  @valid_types Enum.into([:CONNECT,
                          :CONNACK,
                          :PUBLISH,
                          :PUBACK,
                          :PUBREC,
                          :PUBREL,
                          :PUBCOMP,
                          :SUBSCRIBE,
                          :SUBACK,
                          :UNSUBSCRIBE,
                          :UNSUBACK,
                          :PINGREC,
                          :PINGRESP,
                          :DISCONNECT
                         ], HashSet.new)

  def valid?(packet) do
    Set.member?(@valid_types, packet.type)
  end
end
