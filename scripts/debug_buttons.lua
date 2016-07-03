return
{
  {
    Label = "@Spawn (see spawn options on right side)",
    Function = "gibbed_Spawner_Spawn",
    ExitOnSelect = true,
  },

  {
    Label = "@Go To Mission",
    Function = "mms_DebugStartMission",
    ExitOnSelect = true,
    HasSublist = true,
    SublistType = "listbutton",
    ParamCaller = "fe_GetMissionName",
    Param = "fes_DebugGetAllMissionIds",
    ParamIsNumber = true,
  },

  {
    Label = "@Toggle Player Immortality",
    Function = "fe_TogglePlayerImmortality",
    Param = nil,
  },

  {
    Label = "@Complete Mission",
    Function = "fe_SetScreenResultScenarioEvent",
    Param = "DEBUG_CompleteMission",
    ExitOnSelect = true,
  },

  {
    Label = "@Checkpoints (Prev)",
    Function = "fe_SetScreenResultScenarioEvent",
    Param = "DEBUG_CheckpointPrev",
    ExitOnSelect = true,
  },

  {
    Label = "@Checkpoints (Restore)",
    Function = "fe_SetScreenResultScenarioEvent",
    Param = "DEBUG_CheckpointRestore",
    ExitOnSelect = true,
  },

  {
    Label = "@Checkpoints (Next)",
    Function = "fe_SetScreenResultScenarioEvent",
    Param = "DEBUG_CheckpointNext",
    ExitOnSelect = true,
  },

  {
    Label = "@Checkpoints (Choice)",
    Function = "fes_DebugCheckpointChosen",
    ExitOnSelect = true,
    HasSublist = true,
    SublistType = "listbutton",
    ParamCaller = "fes_DebugCheckpointIndexToName",
    Param = "fes_GetDebugCheckpointList",
  },

  {
    Label = "@Fail Stage",
    Function = "fe_SetScreenResultScenarioEvent",
    Param = "DEBUG_FailStage",
    ExitOnSelect = true,
  },

  {
    Label = "@Close Mission",
    Function = "mms_DebugCloseMission",
    Param = nil,
    ExitOnSelect = true,
  },

  {
    Label = "@Reset ALL Missions",
    Function = "mms_DebugResetAllMissions",
    Param = nil,
    ExitOnSelect = true,
  },

  {
    Label = "@Restart Mission",
    Function = "mms_DebugRestartMission",
    Param = nil,
    ExitOnSelect = true,
  },

  --[[--
  -- Breaks the game
  {
    Label = "@Show Stats",
    Function = "fes_ShowDebugStatsScreen",
    Param = nil,
    ExitOnSelect = false,
  },
  --]]--

  -- Was named "Give Pheromones", but it actually gives max mass.
  {
    Label = "@Give Mass",
    Function = "fes_AddPheromones",
    Param = nil,
    ExitOnSelect = true,
  },

  {
    Label = "@Next Level -1",
    Function = "fes_NextLevelMinusOne",
    ExitOnSelect = true,
  },

  {
    Label = "@Give 5000 EP",
    Function = "ep_AwardEP",
    Param = 5000,
    ExitOnSelect = true,
  },

  --[[--
  -- Doesn't do anything?
  {
    Label = "@Toggle Ad Impressions",
    Function = "dover_Toggle",
    Param = "OnlineAdvert",
  },
  --]]--

  --[[--
  -- Not present in RELEASE.
  {
    Label = "@Toggle Dialogue Lines",
    Function = "debugdraw_ToggleDebugByName",
    Param = "Audio Dialogue",
  },
  --]]--

  {
    Label = "@Toggle Hide Hud",
    -- This is the wrong function!
    --Function = "fe_ToggleHideGameHUDOption",
    --Param = "",
    Function = "fe_ToggleHideHUDOption",
    Param = nil,
  },

  --[[--
  -- Not present in RELEASE.
  {
    Label = "@Toggle Tester Info",
    Function = "debugdraw_ToggleDebugByName",
    Param = "Tester Info",
  },

  {
    Label = "@Toggle Threading Profile",
    Function = "debugdraw_ToggleDebugByName",
    Param = "Threading Profile",
  },
  --]]--

  {
    Label = "@Unlock Unlockables",
    Function = "fes_UnlockUnlockables",
    ExitOnSelect = false,
    HasSublist = true,
    SublistType = "listbutton",
    ParamCaller = "fes_GetAllUnlockablesGroupKey",
    Param = "fes_GetAllUnlockablesGroup",
  },

  {
    Label = "@Lock Unlockables",
    Function = "fes_LockUnlockables",
    ExitOnSelect = false,
    HasSublist = true,
    SublistType = "listbutton",
    ParamCaller = "fes_GetAllUnlockablesGroupKey",
    Param = "fes_GetAllUnlockablesGroup",
  },

  -- This appears to flag the current game as a NG+
  {
    Label = "@Fake New Game+",
    Function = "fes_FakeNewGamePlus",
    Param = nil,
  },

  {
    Label = "@Play NIS",
    Function = "nis_PlayDebug",
    ExitOnSelect = true,
    HasSublist = true,
    SublistType = "listbutton",
    ParamCaller = "GetNisNameDebug",
    Param = "GetAllNisNames",
  },

  {
    Label = "@Play FMV",
    Function = "fmv_PlayDebugDelayed",
    ExitOnSelect = true,
    HasSublist = true,
    SublistType = "listbutton",
    ParamCaller = "GetFmvNameDebug",
    Param = "GetAllFmvNames",
  },

  --[[--
  -- Not present in RELEASE.
  {
    Label = "@Toggle Debug Display",
    Function = "debugdraw_ToggleDebugByName",
    ExitOnSelect" = false,
    HasSublist = true,
    SublistType = "listbutton",
    ParamCaller = "fes_DebugDisplayIndexToName",
    Param = "fes_GetDebugDisplayList",
  },
  --]]--

  {
    Label = "@Mutations (Offensive)",
    Function = "fes_Dbg_SetMutations",
    ExitOnSelect = false,
    HasSublist = true,
    SublistType = "toggle",
    ParamCaller = "fes_Dbg_ReturnMutationId",
    Param = "fes_Dbg_GetMutationsOffensiveId",
    ParamToName = "fes_Dbg_GetMutationsName",
    ParamIsNumber = true,
    GetValueFunction = "fes_Dbg_unlockable_IsAcquired",
    Entries =
    {
      {Name = "$OFF", Value = "0"},
      {Name = "$ON",  Value = "1"},
    },
  },

  {
    Label = "@Mutations (Locomotion)",
    Function = "fes_Dbg_SetMutations",
    ExitOnSelect = false,
    HasSublist = true,
    SublistType = "toggle",
    ParamCaller = "fes_Dbg_ReturnMutationId",
    Param = "fes_Dbg_GetMutationsLocoId",
    ParamToName = "fes_Dbg_GetMutationsName",
    ParamIsNumber = true,
    GetValueFunction = "fes_Dbg_unlockable_IsAcquired",
    Entries =
    {
      {Name = "$OFF", Value = "0"},
      {Name = "$ON",  Value = "1"},
    },
  },

  {
    Label = "@Mutations (Defensive)",
    Function = "fes_Dbg_SetMutations",
    ExitOnSelect = false,
    HasSublist = true,
    SublistType = "toggle",
    ParamCaller = "fes_Dbg_ReturnMutationId",
    Param = "fes_Dbg_GetMutationsDefensiveId",
    ParamToName = "fes_Dbg_GetMutationsName",
    ParamIsNumber = true,
    GetValueFunction = "fes_Dbg_unlockable_IsAcquired",
    Entries =
    {
      {Name = "$OFF", Value = "0"},
      {Name = "$ON",  Value = "1"},
    },
  },

  {
    Label = "@Mutations (Predator)",
    Function = "fes_Dbg_SetMutations",
    ExitOnSelect = false,
    HasSublist = true,
    SublistType = "toggle",
    ParamCaller = "fes_Dbg_ReturnMutationId",
    Param = "fes_Dbg_GetMutationsHuntingId",
    ParamToName = "fes_Dbg_GetMutationsName",
    ParamIsNumber = true,
    GetValueFunction = "fes_Dbg_unlockable_IsAcquired",
    Entries =
    {
      {Name = "$OFF", Value = "0"},
      {Name = "$ON",  Value = "1"},
    },
  },

  {
    Label = "@Mutations (Power Specialist)",
    Function = "fes_Dbg_SetMutations",
    ExitOnSelect = false,
    HasSublist = true,
    SublistType = "toggle",
    ParamCaller = "fes_Dbg_ReturnMutationId",
    Param = "fes_Dbg_GetMutationsWildCardId",
    ParamToName = "fes_Dbg_GetMutationsName",
    ParamIsNumber = true,
    GetValueFunction = "fes_Dbg_unlockable_IsAcquired",
    Entries =
    {
      {Name = "$OFF", Value = "0"},
      {Name = "$ON",  Value = "1"},
    },
  },

  {
    Label = "@Mutations (RADNET)",
    Function = "fes_Dbg_SetMutations",
    ExitOnSelect = false,
    HasSublist = true,
    SublistType = "toggle",
    ParamCaller = "fes_Dbg_ReturnMutationId",
    Param = "fes_Dbg_GetMutationsOpStickyId",
    ParamToName = "fes_Dbg_GetMutationsName",
    ParamIsNumber = true,
    GetValueFunction = "fes_Dbg_unlockable_IsAcquired",
    Entries =
    {
      {Name = "$OFF", Value = "0"},
      {Name = "$ON",  Value = "1"},
    },
  },

  {
    Label = "@Low Violence",
    Function = "fes_Dbg_SetLowViolenceBit",
    ExitOnSelect = false,
    HasSublist = true,
    SublistType = "toggle",
    ParamCaller = "fes_Dbg_ReturnLowViolenceId",
    Param = "fes_Dbg_GetLowViolenceList",
    ParamToName = "fes_Dbg_LowViolenceName",
    ParamIsNumber = true,
    GetValueFunction = "fes_Dbg_LowViolence_IsBitSet",
    Entries =
    {
      {Name = "$OFF", Value = "0"},
      {Name = "$ON",  Value = "1"},
    },
  },

  {
    Label = "@Reset Server Competitive Score",
    Function = "fes_Dbg_ResetCompStatServerScore",
  },

  {
    Label = "@Reset Steam Achievements",
    Function = "ach_ResetSteamAchievements",
    Param = nil,
  },
}
