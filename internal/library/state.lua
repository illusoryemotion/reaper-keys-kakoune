local state_interface = require('state_machine.state_interface')

local state = {}

function state.setModeNormal()
  state_interface.setMode('normal')
end

function state.setModeRecord()
  state_interface.setMode('record')
end

function state.toggleRecordMode()
  local mode = state_interface.getMode()
  if mode == 'record' then
    state.setModeNormal()
  else
    state.setModeRecord()
  end
end

function state.setModeVisualTrack()
  local current_track = reaper.GetLastTouchedTrack()
  if current_track then
    reaper.SetOnlyTrackSelected(current_track)

    local visual_track_pivot_i = reaper.GetMediaTrackInfo_Value(current_track, "IP_TRACKNUMBER") - 1

    state_interface.setMode('visual_track')
    state_interface.setVisualTrackPivotIndex(visual_track_pivot_i)
  end
end

function state.setModeVisualTimeline()
  local current_position = reaper.GetCursorPosition()
  reaper.GetSet_LoopTimeRange(true, false, current_position, current_position, false)
  state_interface.setMode('visual_timeline')

  if state_interface.getTimelineSelectionSide() == 'left' then
    state_interface.setTimelineSelectionSide('right')
  end
end

function state.switchTimelineSelectionSide()
  local go_to_start_of_selection = 40630
  local go_to_end_of_selection = 40631

  if state_interface.getTimelineSelectionSide() == 'right' then
    reaper.Main_OnCommand(go_to_start_of_selection, 0)
    state_interface.setTimelineSelectionSide('left')
  else
    reaper.Main_OnCommand(go_to_end_of_selection, 0)
    state_interface.setTimelineSelectionSide('right')
  end
end

return state
