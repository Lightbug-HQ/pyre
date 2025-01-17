from pyre.request import Request
from pyre.response import Response

trait Service:
    fn func(mut self, req: Request) raises -> Response:
        ...
