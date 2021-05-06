
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

A token used for advancing to the next page of results of your get
relational database bundles request.


=head2 _request_id => Str


=cut

1;