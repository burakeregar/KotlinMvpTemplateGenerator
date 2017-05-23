package ${packageName}

import android.os.Bundle
import android.support.v4.content.ContextCompat
import android.support.v7.widget.Toolbar

import com.base.BaseActivity
import ${packageName}.di.Dagger${activityClass}ActivityComponent
import ${packageName}.di.${activityClass}ActivityModule
import ${packageName}.presenter.${activityClass}Presenter
import ${packageName}.presenter.${activityClass}View
import kotlinx.android.synthetic.main.${layoutName}.*

import javax.inject.Inject

class ${activityClass}Activity : BaseActivity(), ${activityClass}View {

    @Inject
    lateinit var presenter: ${activityClass}Presenter

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.${layoutName})
    }

    override fun onActivityInject() {
        Dagger${activityClass}ActivityComponent.builder().appComponent(getAppcomponent())
                .${activityClass?uncap_first}ActivityModule(${activityClass}ActivityModule(this))
                .build()
                .inject(this)
	presenter.attachView(this)
    }
}
