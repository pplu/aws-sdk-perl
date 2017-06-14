
package Paws::Route53::CreateHostedZoneResponse;
  use Moose;
  has ChangeInfo => (is => 'ro', isa => 'Paws::Route53::ChangeInfo', required => 1);
  has DelegationSet => (is => 'ro', isa => 'Paws::Route53::DelegationSet', required => 1);
  has HostedZone => (is => 'ro', isa => 'Paws::Route53::HostedZone', required => 1);
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Location', required => 1);
  has VPC => (is => 'ro', isa => 'Paws::Route53::VPC');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateHostedZoneResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeInfo => L<Paws::Route53::ChangeInfo>

A complex type that contains information about the C<CreateHostedZone>
request.



=head2 B<REQUIRED> DelegationSet => L<Paws::Route53::DelegationSet>

A complex type that describes the name servers for this hosted zone.



=head2 B<REQUIRED> HostedZone => L<Paws::Route53::HostedZone>

A complex type that contains general information about the hosted zone.



=head2 B<REQUIRED> Location => Str

The unique URL representing the new hosted zone.



=head2 VPC => L<Paws::Route53::VPC>

A complex type that contains information about an Amazon VPC that you
associated with this hosted zone.




=cut

