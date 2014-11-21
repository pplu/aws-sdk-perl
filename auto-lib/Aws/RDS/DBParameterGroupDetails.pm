
package Aws::RDS::DBParameterGroupDetails {
  use Moose;
  with 'AWS::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Aws::RDS::Parameter]');

}
1;