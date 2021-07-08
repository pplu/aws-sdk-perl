
package Paws::ES::UpdatePackageResponse;
  use Moose;
  has PackageDetails => (is => 'ro', isa => 'Paws::ES::PackageDetails');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpdatePackageResponse

=head1 ATTRIBUTES


=head2 PackageDetails => L<Paws::ES::PackageDetails>

Information about the package C<PackageDetails>.


=head2 _request_id => Str


=cut

