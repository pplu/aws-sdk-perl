
package Paws::ES::ListPackagesForDomainResponse;
  use Moose;
  has DomainPackageDetailsList => (is => 'ro', isa => 'ArrayRef[Paws::ES::DomainPackageDetails]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListPackagesForDomainResponse

=head1 ATTRIBUTES


=head2 DomainPackageDetailsList => ArrayRef[L<Paws::ES::DomainPackageDetails>]

List of C<DomainPackageDetails> objects.


=head2 NextToken => Str

Pagination token that needs to be supplied to the next call to get the
next page of results.


=head2 _request_id => Str


=cut

