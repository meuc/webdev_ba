class NotesController < ApplicationController
  def create
    note_params = params.require(:note).permit(
      :text,
    )
    belt = Belt.find(params[:belt_id])
    technique = Technique.find(params[:technique_id])
    note = technique.notes.new(note_params)
    note.user = current_user

    if note.save
      flash.notice = "Note created"
    else
      flash.alert = "Something wrong with note"
    end

    redirect_to belt_technique_path(belt, technique)
  end

  def destroy
    note = Note.find(params[:id])
    note.destroy!
    flash.notice = "Note deleted"
    redirect_to belt_technique_path(note.technique.belt, note.technique)
  end
end
