package ${escapeKotlinIdentifiers(packageName)}

import ${applicationPackage}.base.mvp.BasePresenter
import ${applicationPackage}.base.mvp.BaseView

interface ${contractName} {

    interface View : BaseView<Presenter> {

    }

    interface Presenter : BasePresenter<View> {

    }
}