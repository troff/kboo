<h1>KBOO</h1>
<br>
            <%= link_to "Listen :", root_path %>
          </li>
        </ul>
    <!-- JPlayer start -->
        <div class="player">

        <!-- The jPlayer div must not be hidden. Keep it at the root of the body element to avoid any such problems. -->
            <div id="jquery_jplayer_1" class="jp-jplayer"></div>

              <!-- The container for the interface can go where you want to display it. Show and hide it as you need. -->
              
              <div id="jp_container_1" class="jp-container">
                <div class="jp-buffer-holder"> <!-- .jp-gt50 only needed when buffer is > than 50% -->
                  <div class="jp-buffer-1"></div>
                  <div class="jp-buffer-2"></div>
                </div>
                <div class="jp-progress-holder"> <!-- .jp-gt50 only needed when progress is > than 50% -->
                  <div class="jp-progress-1"></div>
                  <div class="jp-progress-2"></div>
                </div>
                <div class="jp-circle-control"></div>
                  <ul class="jp-controls">
                    <li><a class="jp-play" tabindex="1">play</a></li>
                    <li><a class="jp-pause" style='display: none;' tabindex="1">pause</a></li> <!-- Needs the inline style here, or jQuery.show() uses display:inline instead of display:block -->
                  </ul>
                </div>
              </div>   
<!-- JPlayer end -->