
package Paws::SESv2::GetBlacklistReportsResponse;
  use Moose;
  has BlacklistReport => (is => 'ro', isa => 'Paws::SESv2::BlacklistReport', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetBlacklistReportsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlacklistReport => L<Paws::SESv2::BlacklistReport>

An object that contains information about a blacklist that one of your
dedicated IP addresses appears on.


=head2 _request_id => Str


=cut

