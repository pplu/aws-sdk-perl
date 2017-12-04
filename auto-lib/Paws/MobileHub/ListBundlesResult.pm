
package Paws::MobileHub::ListBundlesResult;
  use Moose;
  has BundleList => (is => 'ro', isa => 'ArrayRef[Paws::MobileHub::BundleDetails]', traits => ['NameInRequest'], request_name => 'bundleList');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::ListBundlesResult

=head1 ATTRIBUTES


=head2 BundleList => ArrayRef[L<Paws::MobileHub::BundleDetails>]

A list of bundles.


=head2 NextToken => Str

Pagination token. If non-null pagination token is returned in a result,
then pass its value in another request to fetch more entries.


=head2 _request_id => Str


=cut

