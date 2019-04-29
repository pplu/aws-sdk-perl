
package Paws::Chime::GetUserSettingsResponse;
  use Moose;
  has UserSettings => (is => 'ro', isa => 'Paws::Chime::UserSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetUserSettingsResponse

=head1 ATTRIBUTES


=head2 UserSettings => L<Paws::Chime::UserSettings>

The user settings.


=head2 _request_id => Str


=cut

