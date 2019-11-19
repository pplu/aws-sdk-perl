# Generated from callresult_class.tt

package Paws::RedShift::DescribeSnapshotSchedulesOutputMessage;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::RedShift::Types qw/RedShift_SnapshotSchedule/;
  has Marker => (is => 'ro', isa => Str);
  has SnapshotSchedules => (is => 'ro', isa => ArrayRef[RedShift_SnapshotSchedule]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Marker' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SnapshotSchedules' => {
                                        'class' => 'Paws::RedShift::SnapshotSchedule',
                                        'type' => 'ArrayRef[RedShift_SnapshotSchedule]'
                                      }
             },
  'NameInRequest' => {
                       'SnapshotSchedules' => 'SnapshotSchedule'
                     }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DescribeSnapshotSchedulesOutputMessage

=head1 ATTRIBUTES


=head2 Marker => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
marker value in the C<marker> parameter and retrying the command. If
the C<marker> field is empty, all response records have been retrieved
for the request.


=head2 SnapshotSchedules => ArrayRef[RedShift_SnapshotSchedule]

A list of SnapshotSchedules.


=head2 _request_id => Str


=cut

