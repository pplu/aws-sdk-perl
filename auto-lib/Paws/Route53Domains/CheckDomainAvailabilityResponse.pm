
package Paws::Route53Domains::CheckDomainAvailabilityResponse;
  use Moose;
  has Availability => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::CheckDomainAvailabilityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Availability => Str

Whether the domain name is available for registering.

You can register only domains designated as C<AVAILABLE>.

Valid values:

=over

=item AVAILABLE

The domain name is available.

=item AVAILABLE_RESERVED

The domain name is reserved under specific conditions.

=item AVAILABLE_PREORDER

The domain name is available and can be preordered.

=item DONT_KNOW

The TLD registry didn't reply with a definitive answer about whether
the domain name is available. Amazon Route 53 can return this response
for a variety of reasons, for example, the registry is performing
maintenance. Try again later.

=item PENDING

The TLD registry didn't return a response in the expected amount of
time. When the response is delayed, it usually takes just a few extra
seconds. You can resubmit the request immediately.

=item RESERVED

The domain name has been reserved for another person or organization.

=item UNAVAILABLE

The domain name is not available.

=item UNAVAILABLE_PREMIUM

The domain name is not available.

=item UNAVAILABLE_RESTRICTED

The domain name is forbidden.

=back


Valid values are: C<"AVAILABLE">, C<"AVAILABLE_RESERVED">, C<"AVAILABLE_PREORDER">, C<"UNAVAILABLE">, C<"UNAVAILABLE_PREMIUM">, C<"UNAVAILABLE_RESTRICTED">, C<"RESERVED">, C<"DONT_KNOW">
=head2 _request_id => Str


=cut

1;