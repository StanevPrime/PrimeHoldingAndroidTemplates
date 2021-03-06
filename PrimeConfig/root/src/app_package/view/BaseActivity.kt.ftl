package ${packageName}.view.base

import android.annotation.SuppressLint
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import ${packageName}.model.error.IError
import io.reactivex.disposables.CompositeDisposable


@SuppressLint("Registered")
abstract class BaseActivity : AppCompatActivity() {

    val compositeDisposable = CompositeDisposable()

	override fun onStart() {
        super.onStart()
        bind()
    }

	override fun onStop() {
        super.onStop()
        compositeDisposable.clear()
    }
	
    override fun onDestroy() {
        super.onDestroy()
        compositeDisposable.dispose()
    }

    /**
     * Set up your bindings in the child activity
     */
    abstract fun bind()


    open fun renderLoadingState(isLoading: Boolean) {
        //TODO set up your way of showing loading either here or in child activities
    }

    open fun renderErrorState(error: IError) {
        //TODO set up your way of showing errors either here or in child activities
    }

}