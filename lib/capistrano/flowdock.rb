require 'flowdock'
require 'digest/md5'
require 'cgi'
require 'rugged'

module Capistrano
  module Flowdock
    class << self
      def commits_between(repository, before, after)
        walker = Rugged::Walker.new(repository)
        walker.push(after)
        walker.hide(before)
        walker.sorting Rugged::SORT_TOPO
        walker.walk.to_a
      end

      def id_abbrev(id)
        id[0...7]
      end
    end
  end
end

load File.expand_path('../tasks/flowdock.cap', __FILE__)
