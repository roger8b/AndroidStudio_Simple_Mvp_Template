package ${escapeKotlinIdentifiers(packageName)}

<#if useAndroidX>
import ${getMaterialComponentName('android.support.v4.app.Fragment', useAndroidX)}
<#else>
import android.<#if appCompat>support.v4.</#if>app.Fragment
</#if>
import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import ${applicationPackage}.base.view.BaseFragment
import org.koin.android.ext.android.inject
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>


class ${fragmentClass} : BaseFragment(), ${contractName}.View {

        private var listener: ${fragmentClass}InteractionListener? = null

    override val presenter: ${contractName}.Presenter by inject<${contractName}.Presenter>()

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.${fragmentLayoutName}, container, false)
    }
        
    override fun onAttach(context: Context) {
        super.onAttach(context)
        if (context is ${fragmentClass}InteractionListener) {
            listener = context
        } else {
            throw RuntimeException(context.toString() + " must implement CardFragmentInteractionListener")
        }
    }

    override fun onDetach() {
        super.onDetach()
        listener = null
    }

    interface ${fragmentClass}InteractionListener {
     
    }

    companion object {
        @JvmStatic
        fun newInstance() = ${fragmentClass}()
    }
}
