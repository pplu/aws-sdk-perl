
package Paws::OpsWorks::GetHostnameSuggestionResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Hostname => (is => 'ro', isa => 'Str');
  has LayerId => (is => 'ro', isa => 'Str');

}
1;