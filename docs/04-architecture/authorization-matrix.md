# Authorization Matrix

| Capability | Anonymous | STUDENT | CONTENT_EDITOR | ADMIN |
|---|---:|---:|---:|---:|
| View public Explore | Yes | Yes | Yes | Yes |
| Register/Login | Yes | Yes | Yes | Yes |
| View own roadmap/today/progress | No | Yes | Yes* | Yes* |
| Submit own assessment/review | No | Yes | Yes* | Yes* |
| View another user's learning data | No | No | No by default | Only if explicit admin use case is built |
| Edit draft curriculum | No | No | Yes | Yes |
| Publish/deprecate content | No | No | No/optional | Yes |
| Manage account status | No | No | No | Yes |

`*` Content editor/admin vẫn là một user account, nhưng không có quyền xem learner data của người khác chỉ vì role cao.

## Principle

Least privilege. Không xây admin “god mode” rộng nếu feature không cần.
