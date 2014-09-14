
package Aws::OpsWorks::GetHostnameSuggestionResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has Hostname => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');

}
1;
