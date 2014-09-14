
package Aws::OpsWorks::CreateLayerResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has LayerId => (is => 'ro', isa => 'Str');

}
1;
