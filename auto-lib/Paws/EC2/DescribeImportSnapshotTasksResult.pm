
package Paws::EC2::DescribeImportSnapshotTasksResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ImportSnapshotTask/;
  has ImportSnapshotTasks => (is => 'ro', isa => ArrayRef[EC2_ImportSnapshotTask]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImportSnapshotTasks' => {
                                          'class' => 'Paws::EC2::ImportSnapshotTask',
                                          'type' => 'ArrayRef[EC2_ImportSnapshotTask]'
                                        },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ImportSnapshotTasks' => 'importSnapshotTaskSet',
                       'NextToken' => 'nextToken'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImportSnapshotTasksResult

=head1 ATTRIBUTES


=head2 ImportSnapshotTasks => ArrayRef[EC2_ImportSnapshotTask]

A list of zero or more import snapshot tasks that are currently active
or were completed or canceled in the previous 7 days.


=head2 NextToken => Str

The token to use to get the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

