class TodosController < ApplicationController
 
    def index
        @todos = Todo.all
    end

    def new
        @todo = Todo.new
    end

    def edit
        @todo = Todo.find(params[:id])
    end

    def update
        @todo = Todo.find(params[:id])
        if @todo.update(todo_params)
            redirect_to @todo
        else
            render 'edit'
        end
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
