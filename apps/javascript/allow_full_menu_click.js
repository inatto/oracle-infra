// expande sub menu clicando no label
// noinspection JSUnresolvedReference

$("#t_TreeNav").on("treeviewactivatenode", function (e, ui) {

	let n$ = $(e.originalEvent.target).closest(".a-TreeView-content");
	if (ui.nodes.length > 0 && ui.nodes[0].link === "") {
		if (n$.parent().hasClass("is-expandable")) {
			$(this).treeView("expand", n$)
		} else if (n$.parent().hasClass("is-collapsible")) {
			$(this).treeView("collapse", n$)
		}
	}

});

