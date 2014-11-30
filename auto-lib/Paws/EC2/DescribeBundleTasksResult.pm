
package Paws::EC2::DescribeBundleTasksResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has BundleTasks => (is => 'ro', isa => 'ArrayRef[Paws::EC2::BundleTask]', traits => ['Unwrapped'], xmlname => 'bundleInstanceTasksSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeBundleTasksResult

=head1 ATTRIBUTES

=head2 BundleTasks => ArrayRef[Paws::EC2::BundleTask]

  

Information about one or more bundle tasks.











=cut

