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
                    reverb.setDiffusion((short) 1000);
                    reverb.setReverbLevel((short) 1000);
                    reverb.setDecayTime(10000);
                    reverb.setReverbDelay(100);
                    reverb.setDensity((short) 1000);
                    result.success("Reverb applied to session ID ${audioSessionId}")
                }
                "removeReverb" -> {
                    val audioSessionId = call.argument<Int>("audioSessionId") ?: 0
                    val reverb = EnvironmentalReverb(0, audioSessionId)
                    reverb.enabled = false
                    result.success("Reverb removed from session ID ${audioSessionId}")
                }
                else -> result.notImplemented()
            }
        }
    }
}
