
package Paws::DAX::DeleteParameterGroupResponse;
  use Moose;
  has DeletionMessage => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DeleteParameterGroupResponse

=head1 ATTRIBUTES


=head2 DeletionMessage => Str

A user-specified message for this action (i.e., a reason for deleting
the parameter group).


=head2 _request_id => Str


=cut

1;