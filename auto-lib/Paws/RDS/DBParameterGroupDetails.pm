
package Paws::RDS::DBParameterGroupDetails {
  use Moose;
  with 'Paws::API::ResultParser';
  has Marker => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::RDS::Parameter]');

}
1;