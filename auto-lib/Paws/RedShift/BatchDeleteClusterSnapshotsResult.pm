# Generated from callresult_class.tt

package Paws::RedShift::BatchDeleteClusterSnapshotsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::RedShift::Types qw/RedShift_SnapshotErrorMessage/;
  has Errors => (is => 'ro', isa => ArrayRef[RedShift_SnapshotErrorMessage]);
  has Resources => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Resources' => {
                                'type' => 'ArrayRef[Str|Undef]'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'class' => 'Paws::RedShift::SnapshotErrorMessage',
                             'type' => 'ArrayRef[RedShift_SnapshotErrorMessage]'
                           }
             },
  'NameInRequest' => {
                       'Resources' => 'String',
                       'Errors' => 'SnapshotErrorMessage'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::BatchDeleteClusterSnapshotsResult

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[RedShift_SnapshotErrorMessage]

A list of any errors returned.


=head2 Resources => ArrayRef[Str|Undef]

A list of the snapshot identifiers that were deleted.


=head2 _request_id => Str


=cut

