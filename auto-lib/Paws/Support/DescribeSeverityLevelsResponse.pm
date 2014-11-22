
package Paws::Support::DescribeSeverityLevelsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has severityLevels => (is => 'ro', isa => 'ArrayRef[Paws::Support::SeverityLevel]');

}
1;