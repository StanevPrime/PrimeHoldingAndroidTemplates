package ${packageName}

import android.app.Activity
import android.content.Intent
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.databinding.DataBindingUtil
import androidx.lifecycle.ViewModelProvider
import androidx.lifecycle.ViewModelProviders
<#if applicationPackage??>
import ${applicationPackage}.R
import ${applicationPackage}.databinding.Activity${activityName}Binding
</#if>
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.disposables.Disposable
import javax.inject.Inject


class ${activityName}Activity : AppCompatActivity() {

    private lateinit var activityBinding: Activity${activityName}Binding

    private val compositeDisposable = CompositeDisposable()


    @Inject
    lateinit var viewModelFactory: ViewModelProvider.Factory
    private val viewModel: ${viewModel}InputOutput by lazy { ViewModelProviders.of(this, viewModelFactory).get(${viewModel}::class.java) }
	
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        activityBinding = DataBindingUtil.setContentView(this, R.layout.${activityLayout})

    }
	
	override fun onStart() {
        super.onStart()
        viewModel.output
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

    internal fun render(any: Any) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.

    }

    companion object {
        fun start(sourceActivity: Activity) {
            sourceActivity.startActivity(Intent(sourceActivity, ${activityName}Activity::class.java))
        }
    }
}

private fun ${viewModel}InputOutput.bind(binding: Activity${activityName}Binding): List<Disposable> {
    return listOf(
            output.bind(binding),
            input.bind(binding)
    ).flatten()
}

private fun ${viewModel}Input.bind(binding: Activity${activityName}Binding): List<Disposable> {
    return listOf(

    )
}

private fun ${viewModel}Output.bind(binding: Activity${activityName}Binding): List<Disposable> {
    return listOf(


    )
}


fun ${viewModel}Output.bind(activity: ${activityName}Activity): List<Disposable> {

    //TODO insert any bindings here
    return listOf()
}

