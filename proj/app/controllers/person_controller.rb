class PersonController < ApplicationController
def show

    @h=House.find(params[:id])
    @per=@h. persons.all
  end
  def new

  	@h=House.find(params[:id])
  	@per=@h.persons.new
  end 
def create

    @h = House.find(params[:id])
    @per=@h.persons.create(params[:person]) 
      if @per.save
        flash[:notice]="person detail entered"
         redirect_to :action=>'show',:id=>@h.id
       else
        render :action =>'new'
     end
    end
def edit

  @per=Person.find(params[:id])
end
def update
  
  @per=Person.find(params[:id])
  @h=@per.house
  if @per.update_attributes(params[:person])
    flash[:notice]="person detail updated"
    redirect_to :action =>'show',:id=>@h.id
  else
    render :action=>'edit'
  end
end
def delete

  @per=Person.find(params[:id])
  @h=@per.house
  if @per.delete
     flash[:notice]="person detail deleted"
    redirect_to :action=>'show',:id=>@h.id
  
end
end
end
