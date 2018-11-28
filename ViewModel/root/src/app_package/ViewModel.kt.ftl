package ${packageName}


import io.reactivex.disposables.CompositeDisposable
import androidx.lifecycle.ViewModel
import javax.inject.Inject


//region View Model Interfaces
interface ${viewModelName}Input {

}

interface ${viewModelName}Output {

}

interface ${viewModelName}Type {
val input: ${viewModelName}Input
val output: ${viewModelName}Output

}
//endregion
// TODO: Rename parameter, change to needed
class ${viewModelName}ViewModel @Inject constructor(val param1: Any): ViewModel(), ${viewModelName}Input, ${viewModelName}Output, ${viewModelName}Type {

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


//region Input methods 
// endregion


 override fun onCleared() {
        super.onCleared()
        compositeDisposable.dispose()
    }
}

//Sample extension returning an Observable
//private fun ${viewModelName}Type.getName(): Observable<String> {
//    return Observable.just(this.javaClass.simpleName)
//            .map { it -> it.toUpperCase() }
//}
