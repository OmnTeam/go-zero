package svc

import (
	{{.configImport}}
	"github.com/OmnTeam/SaaS/pkg/ctxs"
	"github.com/zeromicro/go-zero/rest"
)

type ServiceContext struct {
	Config {{.config}}
	InitCtxsWare   rest.Middleware
	{{.middleware}}
}

func NewServiceContext(c {{.config}}) *ServiceContext {
	return &ServiceContext{
		Config: c,
		InitCtxsWare:   ctxs.InitMiddleware,
		{{.middlewareAssignment}}
	}
}
