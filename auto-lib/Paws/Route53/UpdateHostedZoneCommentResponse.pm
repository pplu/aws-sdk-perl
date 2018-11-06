
package Paws::Route53::UpdateHostedZoneCommentResponse;
  use Moose;
  has HostedZone => (is => 'ro', isa => 'Paws::Route53::HostedZone', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::UpdateHostedZoneCommentResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZone => L<Paws::Route53::HostedZone>

A complex type that contains the response to the
C<UpdateHostedZoneComment> request.




=cut

