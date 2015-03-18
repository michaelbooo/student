class User < ActiveRecord::Base
  attr_accessible :birth, :name, :sex
end
