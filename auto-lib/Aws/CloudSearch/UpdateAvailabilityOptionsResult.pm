
package Aws::CloudSearch::UpdateAvailabilityOptionsResult {
  use Moose;
  with 'AWS::API::ResultParser';
  has AvailabilityOptions => (is => 'ro', isa => 'Aws::CloudSearch::AvailabilityOptionsStatus');

}
1;