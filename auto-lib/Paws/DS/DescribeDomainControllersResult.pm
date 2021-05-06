
package Paws::DS::DescribeDomainControllersResult;
  use Moose;
  has DomainControllers => (is => 'ro', isa => 'ArrayRef[Paws::DS::DomainController]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeDomainControllersResult

=head1 ATTRIBUTES


=head2 DomainControllers => ArrayRef[L<Paws::DS::DomainController>]

List of the DomainController objects that were retrieved.


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
C<NextToken> parameter in a subsequent call to
DescribeDomainControllers retrieve the next set of items.


=head2 _request_id => Str


=cut

1;