Item {
	width: 1280;
	height: 720;
	anchors.margins: 10;

	Rectangle {
		y: 40%;
		width: 100%;
		height: 60%;
		clip: true;
		border.width: 2;
		border.color: "#f00";

		ListView {
			width: 100%;
			height: 100%;
			spacing: 30;
			keyNavigationWraps: false;
			positionMode: ListView.Center;
			prerenderDelay: 200;
			prerender: 1;
			delegate: OverflowRowDelegate {}
			model: ListModel {
				ListElement { } ListElement { } ListElement { } ListElement { }
				ListElement { } ListElement { } ListElement { } ListElement { }
				ListElement { } ListElement { } ListElement { } ListElement { }
				ListElement { } ListElement { } ListElement { } ListElement { }
				ListElement { } ListElement { } ListElement { } ListElement { }
				ListElement { } ListElement { } ListElement { } ListElement { }
				ListElement { } ListElement { } ListElement { } ListElement { }
			}
		}
	}
}
