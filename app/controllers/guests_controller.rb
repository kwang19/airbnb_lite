class GuestsController < ApplicationController
  def index
    @guests = Guest.page(params[:page]).per(10)

    render("guests/index.html.erb")
  end

  def show
    @bookmark = Bookmark.new
    @message = Message.new
    @booking = Booking.new
    @guest = Guest.find(params[:id])

    render("guests/show.html.erb")
  end

  def new
    @guest = Guest.new

    render("guests/new.html.erb")
  end

  def create
    @guest = Guest.new

    @guest.host_id = params[:host_id]
    @guest.user_id = params[:user_id]

    save_status = @guest.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guests/new", "/create_guest"
        redirect_to("/guests")
      else
        redirect_back(:fallback_location => "/", :notice => "Guest created successfully.")
      end
    else
      render("guests/new.html.erb")
    end
  end

  def edit
    @guest = Guest.find(params[:id])

    render("guests/edit.html.erb")
  end

  def update
    @guest = Guest.find(params[:id])

    @guest.host_id = params[:host_id]
    @guest.user_id = params[:user_id]

    save_status = @guest.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/guests/#{@guest.id}/edit", "/update_guest"
        redirect_to("/guests/#{@guest.id}", :notice => "Guest updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Guest updated successfully.")
      end
    else
      render("guests/edit.html.erb")
    end
  end

  def destroy
    @guest = Guest.find(params[:id])

    @guest.destroy

    if URI(request.referer).path == "/guests/#{@guest.id}"
      redirect_to("/", :notice => "Guest deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Guest deleted.")
    end
  end
end
