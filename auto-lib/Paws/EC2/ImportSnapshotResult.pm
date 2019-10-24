
package Paws::EC2::ImportSnapshotResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_SnapshotTaskDetail/;
  has Description => (is => 'ro', isa => Str);
  has ImportTaskId => (is => 'ro', isa => Str);
  has SnapshotTaskDetail => (is => 'ro', isa => EC2_SnapshotTaskDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImportTaskId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SnapshotTaskDetail' => {
                                         'class' => 'Paws::EC2::SnapshotTaskDetail',
                                         'type' => 'EC2_SnapshotTaskDetail'
                                       },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ImportTaskId' => 'importTaskId',
                       'SnapshotTaskDetail' => 'snapshotTaskDetail',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportSnapshotResult

=head1 ATTRIBUTES


=head2 Description => Str

A description of the import snapshot task.


=head2 ImportTaskId => Str

The ID of the import snapshot task.


=head2 SnapshotTaskDetail => EC2_SnapshotTaskDetail

Information about the import snapshot task.


=head2 _request_id => Str


=cut

