package ${escapeKotlinIdentifiers(packageName)}

class ${presenterName} : ${contractName}.Presenter {
    override fun start() {
    }

    override lateinit var view: ${contractName}.View
}