
package Paws::Lightsail::GetExportSnapshotRecordsResult;
  use Moose;
  has ExportSnapshotRecords => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::ExportSnapshotRecord]', traits => ['NameInRequest'], request_name => 'exportSnapshotRecords' );
  has NextPageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextPageToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetExportSnapshotRecordsResult

=head1 ATTRIBUTES


=head2 ExportSnapshotRecords => ArrayRef[L<Paws::Lightsail::ExportSnapshotRecord>]

A list of objects describing the export snapshot records.


=head2 NextPageToken => Str

The token to advance to the next page of results from your request.

A next page token is not returned if there are no more results to
display.

To get the next page of results, perform another
C<GetExportSnapshotRecords> request and specify the next page token
using the C<pageToken> parameter.


=head2 _request_id => Str


=cut

1;