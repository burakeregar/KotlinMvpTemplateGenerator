package ${packageName}.di

import android.content.Context

import com.base.di.ActivityScope
import ${packageName}.${activityClass}Activity
import ${packageName}.presenter.${activityClass}Presenter
import dagger.Module
import dagger.Provides

@Module
class ${activityClass}ActivityModule(private val ${activityClass?uncap_first}Activity: ${activityClass}Activity) {

    @Provides
    @ActivityScope
    internal fun provides${activityClass}Activity(): ${activityClass}Activity {
        return ${activityClass?uncap_first}Activity
    }

    @Provides
    @ActivityScope
    internal fun providesContext(): Context {
        return ${activityClass?uncap_first}Activity
    }

    @Provides
    @ActivityScope
    internal fun provides${activityClass}Presenter(): ${activityClass}Presenter {
        return ${activityClass}Presenter()
    }

}
