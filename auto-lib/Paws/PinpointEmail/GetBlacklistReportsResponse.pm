
package Paws::PinpointEmail::GetBlacklistReportsResponse;
  use Moose;
  has BlacklistReport => (is => 'ro', isa => 'Paws::PinpointEmail::BlacklistReport', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::GetBlacklistReportsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlacklistReport => L<Paws::PinpointEmail::BlacklistReport>

An object that contains information about a blacklist that one of your
dedicated IP addresses appears on.


=head2 _request_id => Str


=cut

