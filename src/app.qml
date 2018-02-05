Item {
	anchors.fill: context;

	ListView {
		id: menu;
		width: 20%;
		height: 100%;
		spacing: 5;
		model: ListModel { }
		delegate: WebItem {
			width: 100%;
			height: 60;
			color: "#00f";

			Text {
				width: 100%;
				height: 100%;
				color: "#fff";
				text: model.title;
				font.pixelSize: 32;
				verticalAlignment: Text.AlignVCenter;
				horizontalAlignment: Text.AlignHCenter;
			}
		}
	}

	PageStack {
		x: 20%;
		width: 80%;
		height: 100%;

		RectangleTest {}

		onCompleted: {
			var menuData = []
			var children = this.children

			for (var i = 0; i < children.length; ++i)
				menuData.push({ title: children[i].title })

			menu.model.append(menuData)
		}
	}
}
