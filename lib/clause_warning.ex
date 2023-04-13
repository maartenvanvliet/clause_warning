defmodule ClauseWarning do
  body =
    quote do
      def __absinthe_types__(:a) do
        nil
      end

      def __absinthe_types__(:a) do
        nil
      end
    end

  Module.create(Compiled, body, Macro.Env.location(__ENV__))
end
