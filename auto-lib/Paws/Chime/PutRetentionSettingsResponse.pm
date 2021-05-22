
package Paws::Chime::PutRetentionSettingsResponse;
  use Moose;
  has InitiateDeletionTimestamp => (is => 'ro', isa => 'Str');
  has RetentionSettings => (is => 'ro', isa => 'Paws::Chime::RetentionSettings');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::PutRetentionSettingsResponse

=head1 ATTRIBUTES


=head2 InitiateDeletionTimestamp => Str

The timestamp representing the time at which the specified items are
permanently deleted, in ISO 8601 format.


=head2 RetentionSettings => L<Paws::Chime::RetentionSettings>

The retention settings.


=head2 _request_id => Str


=cut

