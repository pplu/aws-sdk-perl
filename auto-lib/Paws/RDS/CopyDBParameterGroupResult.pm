
package Paws::RDS::CopyDBParameterGroupResult;
  use Moose;
  has DBParameterGroup => (is => 'ro', isa => 'Paws::RDS::DBParameterGroup');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CopyDBParameterGroupResult

=head1 ATTRIBUTES


=head2 DBParameterGroup => L<Paws::RDS::DBParameterGroup>




=head2 _request_id => Str


=cut

