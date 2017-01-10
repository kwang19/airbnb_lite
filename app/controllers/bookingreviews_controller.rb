class BookingreviewsController < ApplicationController
  def index
    @bookingreviews = Bookingreview.all

    render("bookingreviews/index.html.erb")
  end

  def show
    @bookingreview = Bookingreview.find(params[:id])

    render("bookingreviews/show.html.erb")
  end

  def new
    @bookingreview = Bookingreview.new

    render("bookingreviews/new.html.erb")
  end

  def create
    @bookingreview = Bookingreview.new

    @bookingreview.bookings_id = params[:bookings_id]
    @bookingreview.accuracy = params[:accuracy]
    @bookingreview.communication = params[:communication]
    @bookingreview.cleanliness = params[:cleanliness]
    @bookingreview.location = params[:location]
    @bookingreview.checkin = params[:checkin]
    @bookingreview.value = params[:value]
    @bookingreview.body = params[:body]

    save_status = @bookingreview.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookingreviews/new", "/create_bookingreview"
        redirect_to("/bookingreviews")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookingreview created successfully.")
      end
    else
      render("bookingreviews/new.html.erb")
    end
  end

  def edit
    @bookingreview = Bookingreview.find(params[:id])

    render("bookingreviews/edit.html.erb")
  end

  def update
    @bookingreview = Bookingreview.find(params[:id])

    @bookingreview.bookings_id = params[:bookings_id]
    @bookingreview.accuracy = params[:accuracy]
    @bookingreview.communication = params[:communication]
    @bookingreview.cleanliness = params[:cleanliness]
    @bookingreview.location = params[:location]
    @bookingreview.checkin = params[:checkin]
    @bookingreview.value = params[:value]
    @bookingreview.body = params[:body]

    save_status = @bookingreview.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/bookingreviews/#{@bookingreview.id}/edit", "/update_bookingreview"
        redirect_to("/bookingreviews/#{@bookingreview.id}", :notice => "Bookingreview updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Bookingreview updated successfully.")
      end
    else
      render("bookingreviews/edit.html.erb")
    end
  end

  def destroy
    @bookingreview = Bookingreview.find(params[:id])

    @bookingreview.destroy

    if URI(request.referer).path == "/bookingreviews/#{@bookingreview.id}"
      redirect_to("/", :notice => "Bookingreview deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Bookingreview deleted.")
    end
  end
end
