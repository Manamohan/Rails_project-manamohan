class TestsController < ApplicationController
	def index
		@tests = Test.all
	end
    def new
    		@test= Test.new
    end
    def create
    	@test=Test.new(:firstname=>params[:test][:firstname], :lastname=>params[:test][:lastname], :designation=>params[:test][:designation], :origin=>params[:test][:origin])
        if @test.valid?
        	@test.save
        	redirect_to test_path(@test)
        else 
           render 'new'
           end	

    end
    def show
    	@test=Test.find(params[:id])
    end
end
