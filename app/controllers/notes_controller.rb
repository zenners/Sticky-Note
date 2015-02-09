class NotesController < ApplicationController
	helper_method :notes, :note

	def notes
		@_notes ||= Note.all
	end

	def note
		@_note ||= Note.find(params[:id])
	end

end
