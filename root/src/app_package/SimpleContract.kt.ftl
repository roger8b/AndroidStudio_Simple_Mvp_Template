package ${escapeKotlinIdentifiers(packageName)}

import ${applicationPackage}.base.BasePresenter
import ${applicationPackage}.base.BaseView

interface ${contractName} {

    interface View : BaseView<Presenter> {

    }

    interface Presenter : BasePresenter<View> {

    }
}