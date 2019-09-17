class TodosController < ApplicationController
 
    def index
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def create 
        # render plain: params[:todo].inspect
        @todo = Todo.new(todo_params)
        # @todo.save

        if @todo.save
            redirect_to @todo
        else
            render 'new'
        end


    end

    def show
        @todo = Todo.find(params[:id])
        # render html: '<h1> htte1</h1>'.html_safe
    end

    private
    def todo_params
        params.require(:todo).permit(:task_name,:description)
    end
end
