package ${packageName}

import android.arch.lifecycle.ViewModel
import io.reactivex.disposables.CompositeDisposable
import javax.inject.Inject

//region View Model Interfaces
interface ${viewModel}Input {

}

interface ${viewModel}Output {

}

interface ${viewModel}InputOutput {
val input: ${viewModel}Input
val output: ${viewModel}Output

}
//endregion

// TODO: Rename parameter, change to needed
class ${viewModel} @Inject constructor(val param1: Any): ViewModel(), ${viewModel}Input, ${viewModel}Output, ${viewModel}InputOutput {

//region Input Output

override val input = this
override val output = this

//endregion

//region Subjects consuming from Input

//endregion

//region Output

//endregion

//region Locally used

private val compositeDisposable = CompositeDisposable()

//endregion

init{
}

 override fun onCleared() {
        super.onCleared()
        compositeDisposable.dispose()
    }
}