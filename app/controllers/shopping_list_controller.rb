class ShoppingListController < ApplicationController
    def shopping_list
        @recipes = Recipefood.all
        @user = current_user
      end
end
