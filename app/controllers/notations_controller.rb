class NotationsController < ApplicationController
    before_action :find_notation, only: [:show, :edit, :update, :destroy]

    def index 
        notations = Notation.all 
        # render json: notations.to_json(
        #     :include => {
        #         :deliver => {:only => [:compagnie]}
        #      },
        #     :except => [:updated_at, :created_at])
          
        render json: notations, except: [:updated_at, :created_at]
    end 
  
    def show 
        notation = Notation.find(params[:id])
        render json: notation, except: [:updated_at, :created_at]
    end
    
    def new 
        notation = Notation.new   
    end 
    
    def create 
        notation = Notation.create(notation_params) 
        if notation.save
            render json: notation, except: [:updated_at, :created_at]
          else
            render json: {errors: notation.errors.full_messages}
          end
    end 
    
    def edit 
      # notation = Notation.find(params[:id])
    end 
    
    def update
        # notation = Notation.find(params[:id])
        notation.update(notation_params)
        render json: notation, expect: [:updated_at, :created_at] 
    end 
    

    def destroy  
        # notation = Notation.find(params[:id])
        notation.destroy 
        render json: notation
    end 
  
    private 
  
    def notation_params 
      params.require(:notation).permit(:deliver_id,:nom, :commentaire)
    end 
  
    def find_notation
      notation = Notation.find(params[:id])
    end 

end
