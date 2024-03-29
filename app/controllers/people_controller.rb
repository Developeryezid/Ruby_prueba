class PeopleController < ApplicationController

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
    @person.build_document
    @person.build_role
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      redirect_to people_path(@person)
    else
      render :new
    end
  end

  def edit
    @person = Person.find(params[:id])
  end

  def update
    @person = Person.find(params[:id])
    if @person.update(person_params)
      redirect_to person_path(@person)
    else
      render :edit
    end
  end

private

def person_params
    params.require(:person).permit(:identificacion, :primer_nombre, :segundo_nombre, :primer_apellido, :segundo_apellido, :document_id, :role_id)
 end
end