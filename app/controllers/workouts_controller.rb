class WorkoutsController < ApplicationController
def index
    workouts = Workout.all
    render json: workouts.as_json
end

def create 
    workout = Workout.new(
        number: params[:number]
    
    )
    workout.save
    render json: workout.as_json
end

def show 
    workout = Workout.find_by(id:params[:id])
    render json: workout.as_json
end

def update
    workout = Workout.find_by(id: params[:id])
    workout.number = params[:name] || workout.name

end

def delete
    workout = Workout.find_by(id: params[:id])
    workout.destroy
    render json: {message: "workout deleted"}
end


end
