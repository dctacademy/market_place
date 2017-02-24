class CategoriesController < ApplicationController
	# index, new , create, show, edit, update & destroy 
	load_and_authorize_resource
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@categories = Category.all
	end

	def new
		@category = Category.new 
	end

	def create 
		@category = Category.new(category_params)
		if @category.save 
			redirect_to categories_path, notice: "Successfully created category"
		else
			render action: "new"
		end
	end 

	def show
		@category = Category.find(params[:id])
	end

	def edit
		@category = Category.find(params[:id])
	end

	def update
		@category = Category.find(params[:id])
		if @category.update_attributes(category_params)
			redirect_to category_path(@category), notice: "Successfully updated category"
		else
			render action: "edit"
		end
	end

	def destroy
		@category = Category.find(params[:id])
		@category.destroy 
		redirect_to categories_path, notice: "Successfully destroyed record"
	end

	private 
	def category_params
		params[:category].permit(:master_category_id, :name)
	end
end
