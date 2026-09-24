# Learning Unit Specification

Một Learning Unit là unit giao cho người học, không phải chỉ một task title.

## Required sections

1. **Title**
2. **Why it matters**
3. **Learning objectives**
4. **Prerequisite check**
5. **Estimated duration**
6. **Resources** với sections-to-focus và sections-to-skip
7. **System explanation**
8. **Worked example**
9. **Guided practice**
10. **Independent practice**
11. **Retrieval check**
12. **Feedback/remediation map**
13. **Completion evidence**
14. **Review intent**

## Example metadata

```yaml
slug: http-request-response
concepts: [http-request, http-response, http-status]
estimated_minutes: 55
objectives:
  - Explain the request/response cycle without notes
  - Identify method, URL, headers and body in a sample request
  - Interpret common 2xx/4xx/5xx status codes at introductory level
resources:
  - type: primary
    url: https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/Overview
    focus:
      - Components of HTTP-based systems
      - HTTP flow
      - HTTP messages
    skip_for_now:
      - advanced proxy/caching details
```

## Quality gate

Không publish Learning Unit nếu thiếu resource focus, practice hoặc assessment evidence.
