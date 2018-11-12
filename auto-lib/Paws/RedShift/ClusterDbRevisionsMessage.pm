
package Paws::RedShift::ClusterDbRevisionsMessage;
  use Moose;
  has ClusterDbRevisions => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterDbRevision]', request_name => 'ClusterDbRevision', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterDbRevisionsMessage

=head1 ATTRIBUTES


=head2 ClusterDbRevisions => ArrayRef[L<Paws::RedShift::ClusterDbRevision>]

A list of revisions.


=head2 Marker => Str

A string representing the starting point for the next set of revisions.
If a value is returned in a response, you can retrieve the next set of
revisions by providing the value in the C<marker> parameter and
retrying the command. If the C<marker> field is empty, all revisions
have already been returned.


=head2 _request_id => Str


=cut

