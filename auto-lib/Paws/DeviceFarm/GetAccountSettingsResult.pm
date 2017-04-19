
package Paws::DeviceFarm::GetAccountSettingsResult;
  use Moose;
  has AccountSettings => (is => 'ro', isa => 'Paws::DeviceFarm::AccountSettings', traits => ['NameInRequest'], request_name => 'accountSettings' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::GetAccountSettingsResult

=head1 ATTRIBUTES


=head2 AccountSettings => L<Paws::DeviceFarm::AccountSettings>

The account settings.


=head2 _request_id => Str


=cut

1;