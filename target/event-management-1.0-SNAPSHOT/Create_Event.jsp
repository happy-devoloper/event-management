<div class="modal fade bd-example-modal-lg" id="modalNewEvent">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">

                        <div class="modal-header">
                            <h5 class="modal-title">New Event</h5>
                            <button type="button" class="close" data-dismiss="modal"><span>&times;</span>
                            </button>
                        </div>

                        <div class="modal-body" style="padding: 0px 60px;">
                            <form action="MainController" method="POST" enctype="multipart/form-data">                               
                                <div style="text-align: center">
                                    <h1 class="Information ">Add Event</h1>
                                </div>

                                <div class="row form-group">
                                    <h4><i class="fa-solid fa-users" style="width: 25px"></i>Event's Information</h4>
                                    <div class="input-group input-group-icon">
                                        <input required="" type="text" value="" name="title" placeholder="Title"/>
                                        <div class="input-icon"><i class="fa-solid fa-id-card"></i></div>
                                    </div>

                                    <div class="input-group input-group-icon">
                                        <input type="text" value="" name="speaker" placeholder="Speaker"/>
                                        <div class="input-icon"><i class="fa fa-user"></i></div>
                                    </div>                   

                                    <div class="input-group input-group-icon">
                                        <input type="number" value="" name="participationLimit" placeholder="Number of Participant" min="0"/>
                                        <div class="input-icon"><i class="fa fa-user"></i></div>
                                    </div> 
                                </div>

                                <h4><i class="fa-solid fa-file-pen" style="width: 25px;"></i>Event's Type and Location</h4>

                                <div class="row">
                                    <select name="location" class="md-6">
                                        <option hidden="" selected="" disabled="">Select Event Location</option>
                                        <%for (int i = 0; i < listEvtLocation.size(); i++) {
                                        %>
                                        <option value="<%=listEvtLocation.get(i).getLocationID()%>"><%=listEvtLocation.get(i).getLocaitonName()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                    <select name="eventType" class="md-6">
                                        <option hidden="" selected="" disabled="">Select Event Type</option>
                                        <%for (int i = 0; i < listEvtType.size(); i++) {
                                        %>
                                        <option value="<%=listEvtType.get(i).getEventTypeID()%>"><%=listEvtType.get(i).getEventTypeName()%></option>
                                        <%
                                            }
                                        %>
                                    </select>
                                </div>

                                <div class="form-group row">
                                    <h4><i class="fa-solid fa-calendar-days" style="width: 25px;"></i>Take Place Date</h4>
                                    <p style="color: red"><%= evtError.getTakePlaceDate()%></p>
                                    <div class="input-group input-group-icon " style="font-family: 'Open Sans','Helvetica Neue',Helvetica, Arial, sans-serif;">
                                        <!--<input required="" type="date" value="" name="takePlaceDate" class="font-color"/>-->
                                        <input required="" type="datetime-local" id="curdate" value="" name="takePlaceDate" class="font-color"/>

                                        <div class="input-icon"><i class="fa-solid fa-file-signature"></i></div>
                                    </div>
                                </div>

                                <div class="row">
                                    <h4><i class="fa-solid fa-file-pen" style="width: 25px;"></i>Event Summary</h4>
                                    <div class="update-content form-group">
                                        <textarea required="" name="summary" id="role" rows="9" style="width: 710px; border-color: #dddada; font-family: 'Open Sans','Helvetica Neue',Helvetica, Arial, sans-serif;"
                                                  placeholder="Enter Event's Summary Here*"></textarea>
                                    </div>

                                    <h4><i class="fa-solid fa-file-pen" style="width: 25px;"></i>Event Description</h4>
                                    <div class="update-content">
                                        <textarea required="" name="content" id="role" rows="9" style="width: 710px; border-color: #dddada; font-family: 'Open Sans','Helvetica Neue',Helvetica, Arial, sans-serif;"
                                                  placeholder="Enter Event's Description Here*"></textarea>
                                    </div>
                                </div>


                                <div class="row form-group">
                                    <h4><i class="fa-solid fa-link" style="width: 25px"></i>Image</h4>
                                    <div class="input-group input-group-icon">
                                        <input type="file" accept=".jpg, .jpeg, .png" name="image" />
                                        <div class="input-icon"><i class="fa-solid fa-link"></i></div>
                                    </div>
                                </div>

                                <div class="row">
                                    <button type="submit" style="cursor: pointer" class="login-box" name="action" value="CreateEvent">
                                        Create Event
                                    </button>

                                    <button  class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>

                            </form>


                        </div>
                    </div>
                </div>
            </div>