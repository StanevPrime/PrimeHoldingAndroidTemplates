package ${packageName}.di.component
 
import android.content.Context
import ${packageName}.application.BaseApplication
import ${packageName}.di.module.AppModule
<#if addRetrofit>
	import ${packageName}.di.module.NetworkModule
</#if>

import ${packageName}.di.module.ViewModelModule
import dagger.Component
import javax.inject.Singleton


@Singleton
@Component(modules = [AppModule::class,<#if addRetrofit>NetworkModule::class,</#if> ViewModelModule::class])
interface AppComponent {

    fun context(): Context

    /**
     * Inject your activities like this :
     * fun inject(activity: AnyActivity)
     */
    fun inject(app: BaseApplication)


}