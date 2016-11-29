class AllotmentsController < ApplicationController
  def show
    @allotments = Allotment.where(:department_id => current_user.department_id).order('date ASC')

    render("allotments/show.html.erb")
  end

  def new
    @allotment = Allotment.new

    render("allotments/new.html.erb")
  end

  def create
    @allotment = Allotment.new

    @allotment.date = params[:date]
    @allotment.days_available = params[:days_available]
    @allotment.role_id = params[:role_id]
    @allotment.department_id = params[:department_id]

    save_status = @allotment.save

    if save_status == true
      redirect_to("/my_allotments", :notice => "Allotment created successfully.")
    else
      render("allotments/new.html.erb")
    end
  end


  def update
    @allotment = Allotment.find(params[:id])

    @allotment.date = params[:date]
    @allotment.days_available = params[:days_available]
    @allotment.role_id = params[:role_id]
    @allotment.department_id = params[:department_id]

    save_status = @allotment.save

    if save_status == true
      redirect_to("/my_allotments", :notice => "Allotment updated successfully.")
    else
      redirect_to(:back)
    end
  end

  def destroy
    @allotment = Allotment.find(params[:id])

    @allotment.destroy

    if URI(request.referer).path == "/allotments/#{@allotment.id}"
      redirect_to("/my_allotments", :notice => "Allotment deleted.")
    else
      redirect_to(:back, :notice => "Allotment deleted.")
    end
  end
end
