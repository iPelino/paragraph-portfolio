class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
        # best practices
        #@portfolio_items = Portfolio.angular
        #@portfolio_items = Portfolio.ror
    end

    def angular
        @angular_portfolio_items = Portfolio.angular
    end

    def new
        @portfolio_item = Portfolio.new
    end

    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))

        respond_to do |format|
            if @portfolio_item.save
                format.html { redirect_to portfolios_path, notice: 'Portfolio Item was successfully created.' }
            else
                format.html { render :new }
            end
        end
    end

    def edit
        @portfolio_item = Portfolio.find(params[:id])
    end

    def update
        @portfolio_item = Portfolio.find(params[:id])
        respond_to do |format|
            if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
              format.html { redirect_to portfolios_path, notice: 'Blog was successfully updated.' }
            else
              format.html { render :edit }
            end
          end
    end

    def show
        @portfolio_item = Portfolio.find(params[:id])
    end

    def destroy
        #perform the lookup
        @portfolio_item = Portfolio.find(params[:id])

        #perform the  destroy action
        @portfolio_item.destroy

        #redirect
        respond_to do |format|
            format.html { redirect_to portfolios_url, notice: 'Portfolio was successfully Removed.' }
        end
    end
end
