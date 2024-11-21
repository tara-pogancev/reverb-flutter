package com.tarapogancev.reverb

import android.media.audiofx.EnvironmentalReverb
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "audio/effects"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "addReverb" -> {
                    val audioSessionId = call.argument<Int>("audioSessionId") ?: 0
                    val reverb = EnvironmentalReverb(0, audioSessionId)
                    reverb.enabled = true
                    reverb.roomLevel = -1000 // Adjust room level
                    reverb.decayTime = 1000 // Adjust decay time
                    result.success("Reverb applied")
                }
                else -> result.notImplemented()
            }
        }

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "removeReverb" -> {
                    val audioSessionId = call.argument<Int>("audioSessionId") ?: 0
                    val reverb = EnvironmentalReverb(0, audioSessionId)
                    reverb.enabled = false
                    result.success("Reverb removed")
                }
                else -> result.notImplemented()
            }
        }
    }
}
