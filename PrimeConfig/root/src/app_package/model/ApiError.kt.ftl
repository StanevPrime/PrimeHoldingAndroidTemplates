package ${packageName}.model.api

import android.os.Parcelable
import com.google.gson.Gson
import kotlinx.android.parcel.Parcelize
import retrofit2.HttpException
@Parcelize
data class ApiError(val detail: String,
                    val status: HttpStatusCode,
                    val title: String) : Parcelable {


    companion object {

        private val gson = Gson()

       fun from(throwable: HttpException): ApiError {
            val errorDetail = getErrorDetail(throwable)
            return ApiError(errorDetail?.message?.message ?: "",
                    HttpStatusCode.fromCode(throwable.code()),
                    errorDetail?.message?.status ?: ""
            )
        }


        private fun getErrorDetail(throwable: HttpException): ErrorDetail? {
            return try {
                val jObjError = JSONObject(throwable.response().errorBody()?.string())
                gson.fromJson(jObjError.toString(), ErrorDetail::class.java)
            } catch (e: Exception) {
                ErrorDetail(throwable.code(), Message(throwable.localizedMessage, throwable.code().toString()))
            }
        }
    }
}