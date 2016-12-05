# Code Critiques in the Pharo Debugger

To enable the custom debugger and set it as the default debugger, execute the 
following in a playground:

```
GTGenericCritiqueStackDebugger register.
Smalltalk tools debuggerTool: GTGenericCritiqueStackDebugger.
Deprecation raiseWarning: false.
```

Note that we disable the deprecation warning blocks because 
`CompiledMethod>>#critiques` calls `TheManifestBuilder>>#manifsetOf:`, which 
in turn results in uses of the deprecated `Object>>#name`.
