android{
compileOptions {
        sourceCompatibility 1.8
        targetCompatibility 1.8
    }
	dataBinding{enabled=true}
androidExtensions{experimental=true}}
dependencies{kapt 'androidx.lifecycle:lifecycle-common-java8:2.0.0'
kapt 'com.google.dagger:dagger-compiler:2.14.1'}
apply plugin: 'kotlin-kapt'