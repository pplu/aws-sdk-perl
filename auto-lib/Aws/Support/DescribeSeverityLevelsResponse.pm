
package Aws::Support::DescribeSeverityLevelsResponse {
  use Moose;
  with 'AWS::API::ResultParser';
  has severityLevels => (is => 'ro', isa => 'ArrayRef[Aws::Support::SeverityLevel]');

}
1;