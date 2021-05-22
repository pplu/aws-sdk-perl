
package Paws::LicenseManager::GetGrantResponse;
  use Moose;
  has Grant => (is => 'ro', isa => 'Paws::LicenseManager::Grant');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetGrantResponse

=head1 ATTRIBUTES


=head2 Grant => L<Paws::LicenseManager::Grant>

Grant details.


=head2 _request_id => Str


=cut

1;