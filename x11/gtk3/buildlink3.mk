# $NetBSD: buildlink3.mk,v 1.19 2013/09/02 19:50:39 adam Exp $

BUILDLINK_TREE+=	gtk3

.if !defined(GTK3_BUILDLINK3_MK)
GTK3_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gtk3+=	gtk3+>=3.0.0
BUILDLINK_ABI_DEPENDS.gtk3+=	gtk3+>=3.8.2nb5
BUILDLINK_PKGSRCDIR.gtk3?=	../../x11/gtk3

.include "../../mk/bsd.fast.prefs.mk"

pkgbase := gtk3
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.gtk3:Mgtk3-atk-bridge)
.include "../../devel/at-spi2-atk/buildlink3.mk"
.endif
.include "../../devel/atk/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../fonts/fontconfig/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../graphics/cairo-gobject/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/gdk-pixbuf2/buildlink3.mk"
.if !empty(PKG_BUILD_OPTIONS.gtk3:Mx11)
.include "../../x11/libXcursor/buildlink3.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/libXrandr/buildlink3.mk"
.include "../../x11/libXinerama/buildlink3.mk"
.include "../../x11/libXi/buildlink3.mk"
.include "../../x11/libXcomposite/buildlink3.mk"
.endif
.endif # GTK3_BUILDLINK3_MK

BUILDLINK_TREE+=	-gtk3
