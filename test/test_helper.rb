require 'test/unit'
require_relative '../bootstrap_ar'

connect_to 'test'

ENV['FP_ENV'] = 'test' 

# ComicBook.destroy_all