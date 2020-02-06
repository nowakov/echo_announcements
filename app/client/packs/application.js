require.context('../images', true)

import '../stylesheets/application.scss'
import UIkit from 'uikit'
import Icons from 'uikit/dist/js/uikit-icons'
import RailsUJS from 'rails-ujs'

document.addEventListener('DOMContentLoaded', function() {
  RailsUJS.start();
  UIkit.use(Icons);
})
