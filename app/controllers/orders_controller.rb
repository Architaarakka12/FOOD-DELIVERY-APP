class OrdersController < ApplicationController
    def create
        @menu = Menu.find(params[:menu_id])
        @order = @menu.orders.create(order_params)
        redirect_to menu_path(@menu)
      end
      
      def update
        @menu = Menu.find(params[:menu_id])
        @order = @menu.orders.find(params[:id])
        if @order.update(order_params)
        redirect_to menu_order_path(@menu, @order)
        else
        render 'edit'
        end
        end
        
        private
        def order_params
        params.require(:order).permit(:name, :address, :phone, item_ids: [])
        end

     
end
