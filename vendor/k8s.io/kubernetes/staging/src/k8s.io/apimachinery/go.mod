// This is a generated file. Do not edit directly.

module k8s.io/apimachinery

go 1.13

require (
	github.com/davecgh/go-spew v1.1.1
	github.com/docker/spdystream v0.0.0-20160310174837-449fdfce4d96
	github.com/elazarl/goproxy v0.0.0-20180725130230-947c36da3153
	github.com/evanphx/json-patch v4.2.0+incompatible
	github.com/gogo/protobuf v1.3.1
	github.com/golang/groupcache v0.0.0-20160516000752-02826c3e7903
	github.com/golang/protobuf v1.3.2
	github.com/google/go-cmp v0.3.1
	github.com/google/gofuzz v1.1.0
	github.com/google/uuid v1.1.1
	github.com/googleapis/gnostic v0.2.0
	github.com/hashicorp/golang-lru v0.5.1
	github.com/json-iterator/go v1.1.8
	github.com/kr/pretty v0.1.0 // indirect
	github.com/modern-go/reflect2 v1.0.1
	github.com/mxk/go-flowrate v0.0.0-20140419014527-cca7078d478f
	github.com/onsi/ginkgo v1.11.0 // indirect
	github.com/onsi/gomega v1.7.0 // indirect
	github.com/spf13/pflag v1.0.5
	github.com/stretchr/testify v1.4.0
	golang.org/x/net v0.0.0-20200202094626-16171245cfb2
	golang.org/x/sys v0.0.0-20191022100944-742c48ecaeb7 // indirect
	golang.org/x/text v0.3.2 // indirect
	gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127 // indirect
	gopkg.in/inf.v0 v0.9.1
	gopkg.in/yaml.v2 v2.2.8
	k8s.io/klog v1.0.0
	k8s.io/kube-openapi v0.0.0-20200121204235-bf4fb3bd569c
	sigs.k8s.io/structured-merge-diff/v3 v3.0.0
	sigs.k8s.io/yaml v1.2.0
)

replace (
	github.com/google/go-cmp => github.com/google/go-cmp v0.3.0
	github.com/googleapis/gnostic => github.com/googleapis/gnostic v0.1.0
	golang.org/x/net => golang.org/x/net v0.0.0-20191004110552-13f9640d40b9
	golang.org/x/sys => golang.org/x/sys v0.0.0-20190813064441-fde4db37ae7a // pinned to release-branch.go1.13
	golang.org/x/tools => golang.org/x/tools v0.0.0-20190821162956-65e3620a7ae7 // pinned to release-branch.go1.13
	k8s.io/apimachinery => ../apimachinery
)
