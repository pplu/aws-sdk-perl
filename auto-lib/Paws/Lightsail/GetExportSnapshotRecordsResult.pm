# Generated from json/callresult_class.tt

package Paws::Lightsail::GetExportSnapshotRecordsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lightsail::Types qw/Lightsail_ExportSnapshotRecord/;
  has ExportSnapshotRecords => (is => 'ro', isa => ArrayRef[Lightsail_ExportSnapshotRecord]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExportSnapshotRecords' => {
                                            'class' => 'Paws::Lightsail::ExportSnapshotRecord',
                                            'type' => 'ArrayRef[Lightsail_ExportSnapshotRecord]'
                                          }
             },
  'NameInRequest' => {
                       'NextPageToken' => 'nextPageToken',
                       'ExportSnapshotRecords' => 'exportSnapshotRecords'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetExportSnapshotRecordsResult

=head1 ATTRIBUTES


=head2 ExportSnapshotRecords => ArrayRef[Lightsail_ExportSnapshotRecord]

A list of objects describing the export snapshot records.


=head2 NextPageToken => Str

A token used for advancing to the next page of results of your get
relational database bundles request.


=head2 _request_id => Str


=cut

1;