# ocp-azure-agent-layer


Get entitlement
```
podman run -it registry.access.redhat.com/ubi8/ubi:latest
# Do subscription manager stuff...
podman cp 'b4:/etc/pki/entitlement' secrets/.
podman cp 'b4:/etc/yum.repos.d/redhat.repo' repos/.
```

Create entitlement secret
```
oc create secret generic etc-pki-entitlement --from-file=secrets/entitlement/1263948525424133504-key.pem --from-file=secrets/entitlement/1263948525424133504.pem
```

Find RHCOS OS container
```
oc adm release info --pullspecs -a ~/Development/installer-testing/secrets/registry-pull-secret.json | grep rhel
```

Create buildconfig
```
oc create -f buildconfig.yaml
```
