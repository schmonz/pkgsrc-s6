# $NetBSD: buildlink3.mk,v 1.8 2024/11/14 14:12:09 schmonz Exp $

BUILDLINK_TREE+=	s6

.if !defined(S6_BUILDLINK3_MK)
S6_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.s6+=	s6>=2.13.1.0
BUILDLINK_PKGSRCDIR.s6?=	../../sysutils/s6
BUILDLINK_INCDIRS.s6+=		include/s6
BUILDLINK_LIBDIRS.s6+=		lib/s6
BUILDLINK_DEPMETHOD.s6?=	build
.endif	# S6_BUILDLINK3_MK

BUILDLINK_TREE+=	-s6
