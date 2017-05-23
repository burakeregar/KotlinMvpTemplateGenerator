package ${packageName}.di

import com.base.di.ActivityScope
import com.base.di.component.AppComponent
import ${packageName}.${activityClass}Activity

import dagger.Component

@ActivityScope
@Component(dependencies = arrayOf(AppComponent::class), modules = arrayOf(${activityClass}ActivityModule::class))
interface ${activityClass}ActivityComponent {

    fun inject(${activityClass?uncap_first}Activity: ${activityClass}Activity)
}
