
package Paws::ES::DescribePackagesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PackageDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::ES::PackageDetails]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DescribePackagesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 PackageDetailsList => ArrayRef[L<Paws::ES::PackageDetails>]

List of C<PackageDetails> objects.


=head2 _request_id => Str


=cut

