
package Paws::EC2::DescribeExportImageTasksResult;
  use Moose;
  has ExportImageTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ExportImageTask]', request_name => 'exportImageTaskSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeExportImageTasksResult

=head1 ATTRIBUTES


=head2 ExportImageTasks => ArrayRef[L<Paws::EC2::ExportImageTask>]

Information about the export image tasks.


=head2 NextToken => Str

The token to use to get the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

