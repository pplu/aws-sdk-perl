
package Paws::ES::DissociatePackageResponse;
  use Moose;
  has DomainPackageDetails => (is => 'ro', isa => 'Paws::ES::DomainPackageDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::DissociatePackageResponse

=head1 ATTRIBUTES


=head2 DomainPackageDetails => L<Paws::ES::DomainPackageDetails>

C<DomainPackageDetails>


=head2 _request_id => Str


=cut

