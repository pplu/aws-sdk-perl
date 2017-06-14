
package Paws::Route53::GetHostedZoneCountResponse;
  use Moose;
  has HostedZoneCount => (is => 'ro', isa => 'Int', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::GetHostedZoneCountResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostedZoneCount => Int

The total number of public and private hosted zones that are associated
with the current AWS account.




=cut

