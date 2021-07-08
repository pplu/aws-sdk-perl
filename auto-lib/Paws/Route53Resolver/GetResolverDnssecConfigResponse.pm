
package Paws::Route53Resolver::GetResolverDnssecConfigResponse;
  use Moose;
  has ResolverDNSSECConfig => (is => 'ro', isa => 'Paws::Route53Resolver::ResolverDnssecConfig');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetResolverDnssecConfigResponse

=head1 ATTRIBUTES


=head2 ResolverDNSSECConfig => L<Paws::Route53Resolver::ResolverDnssecConfig>

The information about a configuration for DNSSEC validation.


=head2 _request_id => Str


=cut

1;