
package Paws::RedShift::SnapshotMessage;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Snapshots => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Snapshot]', request_name => 'Snapshot', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::SnapshotMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<Marker> parameter and retrying the command. If
the C<Marker> field is empty, all response records have been retrieved
for the request.


=head2 Snapshots => ArrayRef[L<Paws::RedShift::Snapshot>]

A list of Snapshot instances.


=head2 _request_id => Str


=cut

