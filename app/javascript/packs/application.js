/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import 'styles/application.scss'
import 'styles/typeaheadjs.css'

import Rails from 'rails-ujs';
Rails.start();

import 'bootstrap-sass'
import 'modules/datatable'
import 'modules/simplemde'
import 'modules/list'
import 'modules/copy'
import 'modules/cpdl'
import 'modules/video'
import 'modules/typeahead/home-search'
import 'modules/typeahead/dance-search'
import 'modules/typeahead/pieces-search'
import 'modules/typeahead/simple'
import 'modules/datesort/main'

import fontawesome from '@fortawesome/fontawesome';
import solid from '@fortawesome/fontawesome-free-solid';
import faPdf from '@fortawesome/fontawesome-free-regular/faFilePdf';
fontawesome.library.add(solid)
fontawesome.library.add(faPdf)
