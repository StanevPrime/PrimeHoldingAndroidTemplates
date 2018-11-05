package ${packageName}

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.databinding.DataBindingUtil
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.ViewModelProviders
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.disposables.Disposable
import javax.inject.Inject

<#if applicationPackage??>
import ${applicationPackage}.R
import ${applicationPackage}.databinding.Activity${activityName}Binding
import ${applicationPackage}.misc.extension.addTo
	<#if isChildActivity>
		import ${applicationPackage}.view.base.BaseActivity
	<#else>
		import androidx.appcompat.app.AppCompatActivity
	</#if>
</#if>




class ${activityName}Activity :	<#if isChildActivity> BaseActivity()<#else>AppCompatActivity()</#if>
{

    private lateinit var activityBinding: Activity${activityName}Binding
	<#if !isChildActivity>
    private val compositeDisposable = CompositeDisposable()
	</#if>

    @Inject
    lateinit var viewModelFactory: ViewModelProvider.Factory
    private val viewModel: ${viewModelName}Type by lazy { ViewModelProviders.of(this, viewModelFactory).get(${viewModel}::class.java) }
	
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        BaseApplication.appComponent.inject(this)
        activityBinding = DataBindingUtil.setContentView(this, R.layout.${activityLayout})
    }
	
	<#if isChildActivity>
	  override fun bind() {
		viewModel
                .bind(activityBinding)
                .addTo(compositeDisposable)
    }
	
	<#else>
    override fun onStart() {
        super.onStart()
        viewModel
                .bind(activityBinding)
                .addTo(compositeDisposable)

    }
	
	override fun onStop() {
        super.onStop()
        compositeDisposable.clear()
    }

    override fun onDestroy() {
        super.onDestroy()
        compositeDisposable.dispose()
    }
	</#if>
  
    companion object {
        fun start(sourceActivity: Activity) {
            sourceActivity.startActivity(Intent(sourceActivity, ${activityName}Activity::class.java))
        }
    }
}

private fun ${viewModelName}Type.bind(binding: Activity${activityName}Binding): List<Disposable> {
    return listOf(
            output.bind(binding),
            input.bind(binding)
    ).flatten()
}

private fun ${viewModelName}Input.bind(binding: Activity${activityName}Binding): List<Disposable> {
    return listOf(

    )
}

private fun ${viewModelName}Output.bind(binding: Activity${activityName}Binding): List<Disposable> {
    return listOf(


    )
}