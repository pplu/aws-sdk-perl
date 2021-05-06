
package Paws::Detective::DeleteMembersResponse;
  use Moose;
  has AccountIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UnprocessedAccounts => (is => 'ro', isa => 'ArrayRef[Paws::Detective::UnprocessedAccount]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::DeleteMembersResponse

=head1 ATTRIBUTES


=head2 AccountIds => ArrayRef[Str|Undef]

The list of AWS account identifiers for the member accounts that
Detective successfully deleted from the behavior graph.


=head2 UnprocessedAccounts => ArrayRef[L<Paws::Detective::UnprocessedAccount>]

The list of member accounts that Detective was not able to delete from
the behavior graph. For each member account, provides the reason that
the deletion could not be processed.


=head2 _request_id => Str


=cut

