
package Paws::EC2::DescribeReplaceRootVolumeTasksResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has ReplaceRootVolumeTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReplaceRootVolumeTask]', request_name => 'replaceRootVolumeTaskSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReplaceRootVolumeTasksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ReplaceRootVolumeTasks => ArrayRef[L<Paws::EC2::ReplaceRootVolumeTask>]

Information about the root volume replacement task.


=head2 _request_id => Str


=cut

