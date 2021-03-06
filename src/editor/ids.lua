-- authors: Lomtik Software (J. Winwood & John Labenski)
--          Luxinia Dev (Eike Decker & Christoph Kubisch)
---------------------------------------------------------

-- Generate a unique new wxWindowID
local ID_IDCOUNTER = wx.wxID_HIGHEST + 1
function NewID()
  ID_IDCOUNTER = ID_IDCOUNTER + 1
  return ID_IDCOUNTER
end

-- File menu
ID_NEW              = wx.wxID_NEW
ID_OPEN             = wx.wxID_OPEN
ID_CLOSE            = NewID()
ID_CLOSEALL         = NewID()
ID_CLOSEOTHER       = NewID()
ID_NEWFILE          = NewID()
ID_NEWDIRECTORY     = NewID()
ID_RENAMEFILE       = NewID()
ID_DELETEFILE       = NewID()
ID_OPENEXTENSION    = NewID()
ID_COPYFULLPATH     = NewID()
ID_SHOWLOCATION     = NewID()
ID_SAVE             = wx.wxID_SAVE
ID_SAVEAS           = wx.wxID_SAVEAS
ID_SAVEALL          = NewID()
ID_RECENTFILES      = NewID()
ID_RECENTFILESPREV  = NewID()
ID_RECENTFILESNEXT  = NewID()
ID_EXIT             = wx.wxID_EXIT
-- Edit menu
ID_CUT              = wx.wxID_CUT
ID_COPY             = wx.wxID_COPY
ID_PASTE            = wx.wxID_PASTE
ID_SELECTALL        = wx.wxID_SELECTALL
ID_UNDO             = wx.wxID_UNDO
ID_REDO             = wx.wxID_REDO
ID_SHOWTOOLTIP      = NewID()
ID_AUTOCOMPLETE     = NewID()
ID_AUTOCOMPLETEENABLE = NewID()
ID_COMMENT          = NewID()
ID_FOLD             = NewID()
ID_CLEARDYNAMICWORDS = NewID()
-- don't use wx.wxID_PREFERENCES to avoid merging with OSX app menu, because
-- Apple guidelines describe Preferences as a "normal" item without submenus.
ID_PREFERENCES      = NewID()
ID_PREFERENCESSYSTEM = NewID()
ID_PREFERENCESUSER  = NewID()
-- Search menu
ID_FIND             = wx.wxID_FIND
ID_FINDNEXT         = NewID()
ID_FINDPREV         = NewID()
ID_REPLACE          = NewID()
ID_FINDINFILES      = NewID()
ID_REPLACEINFILES   = NewID()
ID_GOTOLINE         = NewID()
ID_SORT             = NewID()
-- View menu
ID_VIEWFILETREE     = NewID()
ID_VIEWOUTPUT       = NewID()
ID_VIEWCALLSTACK    = NewID()
ID_VIEWWATCHWINDOW  = NewID()
ID_VIEWDEFAULTLAYOUT = NewID()
ID_VIEWFULLSCREEN   = NewID()
-- Project menu
ID_TOGGLEBREAKPOINT = NewID()
ID_COMPILE          = NewID()
ID_ANALYZE          = NewID()
ID_RUN              = NewID()
ID_RUNNOW           = NewID()
ID_ATTACHDEBUG      = NewID()
ID_STARTDEBUG       = NewID()
ID_STOPDEBUG        = NewID()
ID_STEP             = NewID()
ID_STEPOVER         = NewID()
ID_STEPOUT          = NewID()
ID_BREAK            = NewID()
ID_TRACE            = NewID()
ID_CLEAROUTPUT      = NewID()
ID_INTERPRETER      = NewID()
ID_PROJECTDIR       = NewID()
ID_PROJECTDIRFROMFILE = NewID()
ID_PROJECTDIRCHOOSE = NewID()
-- Help menu
ID_ABOUT            = wx.wxID_ABOUT
ID_HELPPROJECT      = NewID()
ID_HELPDOCUMENTATION = NewID()
ID_HELPGETTINGSTARTED = NewID()
ID_HELPTUTORIALS    = NewID()
ID_HELPFAQ          = NewID()
ID_HELPCOMMUNITY    = NewID()
-- Watch window menu items
ID_ADDWATCH         = NewID()
ID_EDITWATCH        = NewID()
ID_DELETEWATCH      = NewID()
-- Editor popup menu items
ID_GOTODEFINITION   = NewID()
ID_RENAMEALLINSTANCES = NewID()
ID_QUICKADDWATCH    = NewID()
ID_QUICKEVAL        = NewID()
ID_ADDTOSCRATCHPAD  = NewID()

local ids = {}
function ID (name)
	ids[name] = ids[name] or NewID()
	return ids[name]
end

function IDget (name)
	return ids[name]
end
