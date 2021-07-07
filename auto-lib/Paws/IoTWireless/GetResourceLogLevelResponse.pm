
package Paws::IoTWireless::GetResourceLogLevelResponse;
  use Moose;
  has LogLevel => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetResourceLogLevelResponse

=head1 ATTRIBUTES


=head2 LogLevel => Str



Valid values are: C<"INFO">, C<"ERROR">, C<"DISABLED">
=head2 _request_id => Str


=cut

