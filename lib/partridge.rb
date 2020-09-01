# frozen_string_literal: true

require 'partridge/version'

module Partridge
  class Error < StandardError; end
  # Takes an oid and returns a string representing a pairtree path
  class Pairtree
    def self.oid_to_pairtree(oid)
      prefix = oid.to_s[-2..-1]
      digest_path_structure = oid.to_s.scan(/../)
      digest_path_structure.each do |oiddir|
        prefix += "/#{oiddir}"
      end
      prefix
    end
  end
end
