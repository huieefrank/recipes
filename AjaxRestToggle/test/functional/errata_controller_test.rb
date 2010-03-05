#---
# Excerpted from "Advanced Rails Recipes",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/fr_arr for more book information.
#---
require File.dirname(__FILE__) + '/../test_helper'

class ErrataControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:errata)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_erratum
    assert_difference('Erratum.count') do
      post :create, :erratum => { }
    end

    assert_redirected_to erratum_path(assigns(:erratum))
  end

  def test_should_show_erratum
    get :show, :id => 1
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => 1
    assert_response :success
  end

  def test_should_update_erratum
    put :update, :id => 1, :erratum => { }
    assert_redirected_to erratum_path(assigns(:erratum))
  end

  def test_should_destroy_erratum
    assert_difference('Erratum.count', -1) do
      delete :destroy, :id => 1
    end

    assert_redirected_to errata_path
  end
end
