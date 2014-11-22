
package Paws::OpsWorks::CreateAppResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has AppId => (is => 'ro', isa => 'Str');

}
1;