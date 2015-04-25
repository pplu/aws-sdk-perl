
package Paws::EC2::DescribeImportImageTasksResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has ImportImageTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ImportImageTask]', xmlname => 'importImageTaskSet', traits => ['Unwrapped',]);
  has NextToken => (is => 'ro', isa => 'Str', xmlname => 'nextToken', traits => ['Unwrapped',]);

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeImportImageTasksResult

=head1 ATTRIBUTES

=head2 ImportImageTasks => ArrayRef[Paws::EC2::ImportImageTask]

  

A list of zero or more ImportImage tasks that are currently active or
completed/cancelled in the previous 7 days.









=head2 NextToken => Str

  

The token to get the next page of paginated describe requests.











=cut

