
package Paws::DeviceFarm::GetAccountSettingsResult;
  use Moose;
  has AccountSettings => (is => 'ro', isa => 'Paws::DeviceFarm::AccountSettings', traits => ['Unwrapped'], xmlname => 'accountSettings' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetAccountSettingsResult

=head1 ATTRIBUTES


=head2 AccountSettings => L<Paws::DeviceFarm::AccountSettings>






=cut

1;