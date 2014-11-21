
package Aws::OpsWorks::CreateAppResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AppId => (is => 'ro', isa => 'Str');

}
1;