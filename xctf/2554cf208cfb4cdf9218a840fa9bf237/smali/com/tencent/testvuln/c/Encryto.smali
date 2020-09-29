.class public Lcom/tencent/testvuln/c/Encryto;
.super Ljava/lang/Object;
.source "Encryto.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "JNIEncrypt"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkSignature(Ljava/lang/Object;)I
.end method

.method public static native decode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native doRawData(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native encode(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
.end method


# virtual methods
.method public native HelloLoad()Ljava/lang/String;
.end method
