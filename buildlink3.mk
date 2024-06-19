# $NetBSD: buildlink3.mk,v 1.7 2024/06/19 18:59:28 schmonz Exp $

BUILDLINK_TREE+=	s6

.if !defined(S6_BUILDLINK3_MK)
S6_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.s6+=	s6>=2.13.0.0
BUILDLINK_PKGSRCDIR.s6?=	../../sysutils/s6
BUILDLINK_INCDIRS.s6+=		include/s6
BUILDLINK_LIBDIRS.s6+=		lib/s6
BUILDLINK_DEPMETHOD.s6?=	build
.endif	# S6_BUILDLINK3_MK

BUILDLINK_TREE+=	-s6
