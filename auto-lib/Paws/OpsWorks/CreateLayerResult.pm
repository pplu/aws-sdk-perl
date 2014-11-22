
package Paws::OpsWorks::CreateLayerResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has LayerId => (is => 'ro', isa => 'Str');

}
1;