
package Paws::Chime::GetAccountSettingsResponse;
  use Moose;
  has AccountSettings => (is => 'ro', isa => 'Paws::Chime::AccountSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetAccountSettingsResponse

=head1 ATTRIBUTES


=head2 AccountSettings => L<Paws::Chime::AccountSettings>

The Amazon Chime account settings.


=head2 _request_id => Str


=cut

