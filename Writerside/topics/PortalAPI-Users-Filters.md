# Users

<include from="Snippets-PortalAPI.md" element-id="snippet-header" />

## isActivated

Search for users by activation status.

| Property  | Required | Default value | Description                                  |
|-----------|----------|---------------|----------------------------------------------|
| activated | Yes      |               | Is user activated (valid values are 0 and 1) |

```
/users/?filter=isActivated&activated=1
```

## username

Search for users by username.

| Property  | Required | Default value | Description                  |
|-----------|----------|---------------|------------------------------|
| username  | Yes      |               | Exact username to search for |

```
/users/?filter=username&username=tess
```

## emailExact

Search for users by email address. This search is exact.

| Property    | Required | Default value | Description                       |
|-------------|----------|---------------|-----------------------------------|
| emailexact  | Yes      |               | Exact email address to search for |

```
/users/?filter=emailExact&emailexact=tess.t.person@example.com
```

## email

Search for users by email address. This search may be a partial match.

| Property | Required | Default value | Description                                 |
|----------|----------|---------------|---------------------------------------------|
| email    | Yes      |               | Full or partial email address to search for |

```
/users/?filter=email&email=tess
```
