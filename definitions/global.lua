return {
  register_action = {},
  meta_command = {
    ["."] = "RepeatLastCommand",
    ["@"] = "PlayMacro",
    ["q"] = "RecordMacro",
    ["<SPC>h"] = "ShowReaperKeysHelp",
  },
  timeline_motion = {
    ["0"] = "ProjectStart",
    ["<C-$>"] = "ProjectEnd",
    ["f"] = "PlayPosition",
    ["["] = "LoopStart",
    ["]"] = "LoopEnd",
    ["("] = "TimeSelectionStart",
    [")"] = "TimeSelectionEnd",
    ["<left>"] = "PrevMarker",
    ["<right>"] = "NextMarker",
    ["x"] = "MouseAndSnap",
    ["X"] = "Mouse",
    ["<M-h>"] = "Left10Pix",
    ["<M-l>"] = "Right10Pix",
    ["<M-H>"] = "Left40Pix",
    ["<M-L>"] = "Right40Pix",
    ["h"] = "PrevBeat",
    ["l"] = "NextBeat",
    ["H"] = "PrevMeasure",
    ["L"] = "NextMeasure",
    ["<C-h>"] = "Prev4Beats",
    ["<C-l>"] = "Next4Beats",
    ["<C-H>"] = "Prev4Measures",
    ["<C-L>"] = "Next4Measures",
  },
  timeline_operator = {
    ["r"] = "Record",
    ["c"] = "Record",
    ["t"] = "PlayAndLoop",
  },
  timeline_selector = {
    ["v"] = "TimeSelection",
    ["!"] = "LoopSelection",
    ["n"] = "NextRegion",
    ["N"] = "PrevRegion",
    ["p"] = "PrevRegion",
    ["i"] = {"+inner", {
               ["<M-w>"] = "AutomationItem",
               ["l"] = "AllTrackItems",
               ["p"] = "ProjectTimeline",
               ["w"] = "Item",
               ["W"] = "BigItem",
    }},
  },
  visual_timeline_command = {
    ["v"] = "SetModeNormal",
    ["o"] = "SwitchTimelineSelectionSide",
  },
  command = {
    ["<C-r>"] = "Redo",
    ["u"] = "Undo",
    ["R"] = "ToggleRecord",
    ["C"] = "ToggleRecordByChanging",
    ["T"] = "TransportPlay",
    ["F"] = "TransportPause",
    ["zt"] = "ScrollToPlayPosition",
    ["<C-i>"] = "ZoomRedo",
    ["<C-o>"] = "ZoomUndo",
    ["<M-i>"] = "MoveRedo",
    ["<M-o>"] = "MoveUndo",
    [">"] = "ShiftTimeSelectionRight",
    ["v"] = "SetModeVisualTimeline",
    ["<"] = "ShiftTimeSelectionLeft",
    ["<C-SPC>"] = "ToggleViewMixer",
    ["<ESC>"] = "Reset",
    ["<return>"] = "StartStop",
    ["<M-T>"] = "MoveToMouseAndPlay",
    ["<M-t>"] = "PlayFromMouse",
    ["<M-m>"] = "MidiLearnLastTouchedFX",
    ["<M-M>"] = "ShowEnvelopeModulationLastTouchedFx",
    ["<M-g>"] = "FocusMain",
    ["<M-f>"] = "FxToggleShow",
    ["<M-F>"] = "FxClose",
    ["<M-n>"] = "FxShowNextSel",
    ["<M-N>"] = "FxShowPrevSel",
    ["dr"] = "RemoveRegion",
    ["mi"] = "MarkerInsert",
    ["di"] = "RemoveMarker",
    ["<SPC>"] = { "+leader commands", {
      ["<SPC>"] = "ShowActionList",
      ["h"] = "ShowReaperKeysHelp",
      ["v"] = { "+time/loop selection", {
                  ["l"] = "ToggleLoop",
                  ["f"] = "ToggleLoopSelectionFollowsTimeSelection",
      }},
      ["m"] = { "+midi", {
                  ["x"] = "CloseWindow",
                  [","] = {"+options", {
                             ["q"] = "Quantize",
                             ["s"] = "ToggleMidiSnap",
                  }},
      }},
      ["r"] = { "+recording", {
                  ["o"] = "SetTrackRecMidiOutput",
                  ["d"] = "SetTrackRecMidiOverdub",
                  ["t"] = "SetTrackRecMidiTouchReplace",
                  ["r"] = "SetTrackRecMidiReplace",
                  ["m"] = "SetTrackRecMonitorOnly",
                  ["i"] = "SetTrackRecInput",
                  ["a"] = "SetTrackRecInput",
                  [","] = {"+options", {
                             ["p"] = "ToggleRecordingPreroll",
                             ["z"] = "ToggleRecordingAutoScroll",
                             ["n"] = "SetRecordModeNormal",
                  }},
      }},
      ["s"] = { "+item selection", {
                  ["ci"] = "CycleItemFadeInShape",
                  ["co"] = "CycleItemFadeOutShape",
                  ["j"] = "NextTake",
                  ["k"] = "PrevTake",
                  ["d"] = "DeleteActiveTake",
                  ["s"] = "CropToActiveTake",
                  ["e"] = "OpenMidiEditor",
                  ["n"] = "ItemNormalize",
                  ["r"] = "ItemApplyFX",
                  ["g"] = "GroupItems",
      }},
      ["t"] = { "+track", {
                  ["n"] = "ResetTrackToNormal",
                  ["R"] = "RenderTrack",
                  ["i"] = "AddTrackVirtualInstrument",
                  ["r"] = "RenameTrack",
                  ["z"] = "MinimizeTracks",
                  ["M"] = "CycleRecordMonitor",
                  ["f"] = "CycleFolderState",
                  ["x"] = {"+routing", {
                             ["i"] = "TrackSetInputToMatchFirstSelected",
                             ["s"] = "ShowTrackRouting",
                  }},
                  ["F"] = { "+freeze", {
                    ["f"] = "FreezeTrack",
                    ["u"] = "UnfreezeTrack",
                    ["s"] = "ShowTrackFreezeDetails",
                  }},
                  ["e"] = { "+envelopes", {
                              ["s"]  = "ToggleShowAllEnvelope",
                              ["a"] = "ToggleArmAllEnvelopes",
                              ["A"] = "UnarmAllEnvelopes",
                              ["d"] = "ClearAllEnvelope",
                              ["v"] = "ToggleVolumeEnvelope",
                              ["p"] = "TogglePanEnvelope",
                  }},
      }},
      ["a"] = { "+automation", {
                  ["r"] = "SetAutomationModeTrimRead",
                  ["R"] = "SetAutomationModeRead",
                  ["g"] = "SetAutomationModeLatchAndArm",
                  ["l"] = "SetAutomationModeLatch",
                  ["p"] = "SetAutomationModeLatchPreview",
                  ["t"] = "SetAutomationModeTouch",
                  ["c"] = "SetAutomationModeTouchAndArm",
                  ["w"] = "SetAutomationModeWrite",
      }},
      ["e"] = {"+envelope", {
                 ["a"] = "ToggleArmEnvelope",
                 ["d"] = "ClearEnvelope",
                 ["y"] = "CopyEnvelope",
                 ["t"] = "ToggleShowSelectedEnvelope",
                 ["s"] = {"+shape", {
                            ["b"] = "SetEnvelopeShapeBezier",
                            ["e"] = "SetEnvelopeShapeFastEnd",
                            ["f"] = "SetEnvelopeShapeFastStart",
                            ["l"] = "SetEnvelopeShapeLinear",
                            ["s"] = "SetEnvelopeShapeSlowStart",
                            ["S"] = "SetEnvelopeShapeSquare",
                 }},
      }},
      ["f"] = { "+fx", {
                  ["a"] = "FxAdd",
                  ["b"] = "TrackToggleFXBypass",
                  ["c"] = {"+chain", {
                            ["s"] = "FxChainToggleShow",
                            ["i"] = "ViewFxChainInputCurrentTrack",
                            ["di"] = "ClearFxChainInputCurrentTrack",
                            ["d"] = "ClearFxChainCurrentTrack",
                            ["y"] = "CopyFxChain",
                            ["p"] = "PasteFxChain",
                  }},
                  ["s"] = {"+show", {
                             ["1"] = "FxToggleShow1",
                             ["2"] = "FxToggleShow2",
                             ["3"] = "FxToggleShow3",
                             ["4"] = "FxToggleShow4",
                             ["5"] = "FxToggleShow5",
                             ["6"] = "FxToggleShow6",
                             ["7"] = "FxToggleShow7",
                             ["8"] = "FxToggleShow8",
                  }},
      }},
      [","] = {"+options", {
                 ["s"] = "ToggleSnap",
                 ["c"] = "CycleRippleEditMode",
                 ["m"] = "ToggleMetronome",
                 ["t"] = "ToggleStopAtEndOfTimeSelectionIfNoRepeat",
                 ["i"] = "ToggleAutoCrossfade",
                 ["zt"] = "TogglePlaybackAutoScroll",
                 ["e"] = "ToggleEnvelopePointsMoveWithItems",
      }},
      ["g"] = { "+global", {
                  ["s"] = {"+show", {
                             ["x"] = "ShowRoutingMatrix",
                             ["w"] = "ShowWiringDiagram",
                             ["t"] = "ShowTrackManager",
                             ["p"] = "Preferences",
                  }},
                  ["A"] = "ClearAllRecordArm",
                  ["dr"] = "ResetControlDevices",
                  ["f"] = {"+fx", {
                             ["x"] = "FxCloseAll",
                             ["c"] = "ViewFxChainMaster",
                  }},
                  ["t"] = { "+track", {
                      ["e"] = { "+envelope", {
                              ["s"] = "ToggleShowAllEnvelopeGlobal",
                      }},
                      ["s"] = "UnsoloAllTracks",
                      ["m"] = "UnmuteAllTracks",
                  }},
                  ["a"] = { "+automation", {
                              ["r"] = "SetGlobalAutomationModeTrimRead",
                              ["l"] = "SetGlobalAutomationModeLatch",
                              ["p"] = "SetGlobalAutomationModeLatchPreview",
                              ["t"] = "SetGlobalAutomationModeTouch",
                              ["R"] = "SetGlobalAutomationModeRead",
                              ["w"] = "SetGlobalAutomationModeWrite",
                              ["S"] = "SetGlobalAutomationModeOff",
                  }},
      }},
      ["p"] = { "+project", {
                ["r"] = { "+render", {
                            ["."] = "RenderProjectWithLastSetting",
                            ["r"] = "RenderProject",
                        }},
                ["n"] = "NextTab",
                ["p"] = "PrevTab",
                ["N"] = "PrevTab",
                ["s"] = "SaveProject",
                ["o"] = "OpenProject",
                ["c"] = "NewProjectTab",
                ["d"] = "CloseProject",
                ["x"] = "CleanProjectDirectory",
            }},
    }},
  },
}
