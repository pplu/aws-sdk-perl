
package Paws::FinspaceData::CreateChangesetResponse;
  use Moose;
  has Changeset => (is => 'ro', isa => 'Paws::FinspaceData::ChangesetInfo', traits => ['NameInRequest'], request_name => 'changeset');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::CreateChangesetResponse

=head1 ATTRIBUTES


=head2 Changeset => L<Paws::FinspaceData::ChangesetInfo>

Returns the changeset details.


=head2 _request_id => Str


=cut

