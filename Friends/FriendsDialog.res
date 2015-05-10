Friends/FriendsDialog.res {

	styles {
		"CFriendsDialog CFriendPanel" { }

		SelfPanel {
			render_bg {
				0="fill( x0 - 99, y0 - 3, x1 + 99, y1 + 3, A2.Ribbon )"
			}
		}

		FriendsSearch:empty {
			textcolor=none
			padding-top=3
			image="graphics/onfocus/search"
		}

		CFriendsListSectionAffordance {
			//the dropdown menu button on groups
			inset-left=-6
			padding-bottom=1
		}

		//CFriendsListSectionHeader {
			//!bug - style does not work (can only edit with basic label tag)
		//}

		PageTab {
			inset-top=-5
			padding-left=10
			//minimum-width=75
		}

		PageTab:selected {
			render_bg { }
		}
	}

	layout {
		region { name=header height=50 width=max }
			place { control=frame_minimize,frame_close height=22 width=22 y=13 align=right margin-right=20 }
			place { control=frame_captiongrip margin=2 width=max height=50 }

			place [!$OSX] { control=MenuBar region=header align=top width=52 height=49 margin-left=-10 }
			place { control=friends_search region=header y=9 x=56 height=22 width=92 }

		region { name=body y=50 height=max width=max }
		region { name=box height=max width=max region=body margin-left=26 margin-right=26 }
			place { control=FriendsDialogSheet region=body y=2 width=max height=max }
			place { control=DownLabel region=box y=56 width=max }
			place { control=NoFriendsAddFriendButton region=box start=DownLabel dir=down margin-top=20 }

		place { control=FriendPanelSelf margin-left=-9999 } //don't apply 0's because of cpu spike
		place { control=frame_maximize,friends_search_icon,addFriendsButton height=0 width=0 margin-left=-9999 }
	}
}
