
package Paws::EC2::DescribeInstanceStatusResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has InstanceStatuses => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStatus]', traits => ['Unwrapped'], xmlname => 'instanceStatusSet');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceStatusResult

=head1 ATTRIBUTES

=head2 InstanceStatuses => ArrayRef[Paws::EC2::InstanceStatus]

  

One or more instance status descriptions.









=head2 NextToken => Str

  

The next paginated set of results to return.











=cut

