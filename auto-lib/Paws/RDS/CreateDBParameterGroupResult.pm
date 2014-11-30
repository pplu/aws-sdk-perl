
package Paws::RDS::CreateDBParameterGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has DBParameterGroup => (is => 'ro', isa => 'Paws::RDS::DBParameterGroup');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateDBParameterGroupResult

=head1 ATTRIBUTES

=head2 DBParameterGroup => Paws::RDS::DBParameterGroup

  


=cut

