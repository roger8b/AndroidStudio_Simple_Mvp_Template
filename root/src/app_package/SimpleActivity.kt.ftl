package ${escapeKotlinIdentifiers(packageName)}

import android.app.Activity
import android.os.Bundle
import ${superClassFqcn}
import ${applicationPackage}.R
import ${applicationPackage}.util.replaceFragmentInActivity
import kotlinx.android.synthetic.main.${layoutName}.*
import org.koin.android.ext.android.inject

class ${activityClass} : ${superClass}(), ${fragmentClass}.${fragmentClass}InteractionListener {

    private val fragment: ${fragmentClass} by inject()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})

        supportFragmentManager
            .findFragmentById(R.id.contentFrame) as ${fragmentClass}?
            ?: fragment.also {
                replaceFragmentInActivity(it, R.id.contentFrame)
            }
    }

    override fun onBackPressed() {
        setResult(Activity.RESULT_CANCELED)
        super.onBackPressed()
        finish()
        overridePendingTransition(android.R.anim.fade_in, android.R.anim.fade_out)
    }

}



