
package Paws::RDS::DBParameterGroupNameMessage;
  use Moose;
  has DBParameterGroupName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::DBParameterGroupNameMessage

=head1 ATTRIBUTES


=head2 DBParameterGroupName => Str

Provides the name of the DB parameter group.


=head2 _request_id => Str


=cut

