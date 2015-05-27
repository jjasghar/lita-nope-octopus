module Lita
  module Handlers
    class NopeOctopus < Handler

      route(/^nope octopus/, :octopus, command: false, help: { "nope octopus" => "Posts the nope octopus gif."} )

      def octopus(request)
        request.reply("http://www.reactiongifs.com/wp-content/uploads/2013/02/nope.gif")
      end


    end

    Lita.register_handler(NopeOctopus)

  end
end
