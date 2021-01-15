class DeliversController < ApplicationController

    before_action :find_deliver, only: [:show, :edit, :update, :destroy]
    
        def index 
            delivers = Deliver.all 
            render json: delivers, 
            except: [:updated_at, :created_at]

        end
        
        def create 
            deliver = Deliver.create(deliver_params) 
            if deliver.save
                render json: deliver, except: [:updated_at, :created_at]
            else
                render json: {errors: deliver.errors.full_messages}
            end
        end 

        def update
            # deliver = Deliver.find(params[:id])
            deliver.update(deliver_params)
            render json: deliver, 
            except: [:updated_at, :created_at]
        end 
        
    
        def destroy  
            # deliver = Deliver.find(params[:id])
            deliver.destroy 
            render json: deliver
        end 
      
        private 
      
        def deliver_params 
          params.require(:deliver).permit(:compagnie, :region, :ville, :telephone, :logo)
        end 
      
        def find_deliver
          deliver = Deliver.find(params[:id])
        end 
end
