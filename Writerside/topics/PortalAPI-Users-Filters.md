# Users

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

## isActivated

| Property  | Required | Default value | Description                                  |
|-----------|----------|---------------|----------------------------------------------|
| activated | Yes      |               | Is user activated (valid values are 0 and 1) |

```
/users/?filter=isActivated&activated=1
```

## username

| Property  | Required | Default value | Description                  |
|-----------|----------|---------------|------------------------------|
| username  | Yes      |               | Exact username to search for |

```
/users/?filter=username&username=tess
```

## emailExact

| Property    | Required | Default value | Description                       |
|-------------|----------|---------------|-----------------------------------|
| emailexact  | Yes      |               | Exact email address to search for |

```
/users/?filter=emailExact&emailexact=tess.t.person@example.com
```

## email

| Property | Required | Default value | Description                                 |
|----------|----------|---------------|---------------------------------------------|
| email    | Yes      |               | Full or partial email address to search for |

```
/users/?filter=email&email=tess
```
