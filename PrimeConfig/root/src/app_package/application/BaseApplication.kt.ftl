package ${packageName}.application

import android.app.Application
import ${packageName}.di.component.AppComponent
import ${packageName}.di.component.DaggerAppComponent
import ${packageName}.di.module.AppModule


class BaseApplication : Application() {

    companion object {
        lateinit var appComponent: AppComponent
    }

    override fun onCreate() {
        super.onCreate()
        appComponent = DaggerAppComponent.builder().appModule(AppModule(this, this)).build()
        appComponent.inject(this)

    }

}