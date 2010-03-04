#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
# Adds a search method to query your ActiveRecord models:
#
# class User < ActiveRecord::Base
#   search_column :login, :email
# end
#
# User.search 'fred'
# => [#<User>, #<User>]
#
# User.search 'fred', [:email, :login, :name]
# => [#<User>, #<User>, #<User>]
#
# with_scope :find => {:conditions => search_conditions(query, fields)} do
#   find :all, options
# end
#
# users = paginate :users, :conditions => User.search_conditions(params[:q])
#                           

module Searchable

  def search_column(*columns)
    @search_columns = []
    [columns].flatten.each do |name|
      @search_columns << name
    end
  end

  def search(query, fields=nil, options = {})
    with_scope :find => { :conditions => search_conditions(query, fields) } do
      find :all, options
    end
  end
  
  def search_conditions(query, fields=nil)
    return nil if query.blank?
    fields ||= @search_columns
    sql = [[fields].flatten.map { |f|
      "LOWER(#{f}) LIKE :q"}.join(' OR '), {:q => "%#{query.to_s.downcase}%"}]
    self.send(:sanitize_sql, sql)     
  end

end