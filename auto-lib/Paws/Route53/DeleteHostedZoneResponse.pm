
package Paws::Route53::DeleteHostedZoneResponse;
  use Moose;
  has ChangeInfo => (is => 'ro', isa => 'Paws::Route53::ChangeInfo', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::DeleteHostedZoneResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeInfo => L<Paws::Route53::ChangeInfo>

A complex type that contains the ID, the status, and the date and time
of a request to delete a hosted zone.




=cut

