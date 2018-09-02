package Paws::WAF::IPSet;
  use Moose;
  has IPSetDescriptors => (is => 'ro', isa => 'ArrayRef[Paws::WAF::IPSetDescriptor]', required => 1);
  has IPSetId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::IPSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::IPSet object:

  $service_obj->Method(Att1 => { IPSetDescriptors => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::IPSet object:

  $result = $service_obj->Method(...);
  $result->Att1->IPSetDescriptors

=head1 DESCRIPTION

Contains one or more IP addresses or blocks of IP addresses specified
in Classless Inter-Domain Routing (CIDR) notation. AWS WAF supports
IPv4 address ranges: /8 and any range between /16 through /32. AWS WAF
supports IPv6 address ranges: /16, /24, /32, /48, /56, /64, and /128.

To specify an individual IP address, you specify the four-part IP
address followed by a C</32>, for example, 192.0.2.0/31. To block a
range of IP addresses, you can specify /8 or any range between /16
through /32 (for IPv4) or /16, /24, /32, /48, /56, /64, or /128 (for
IPv6). For more information about CIDR notation, see the Wikipedia
entry Classless Inter-Domain Routing
(https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing).

=head1 ATTRIBUTES


=head2 B<REQUIRED> IPSetDescriptors => ArrayRef[L<Paws::WAF::IPSetDescriptor>]

  The IP address type (C<IPV4> or C<IPV6>) and the IP address range (in
CIDR notation) that web requests originate from. If the C<WebACL> is
associated with a CloudFront distribution and the viewer did not use an
HTTP proxy or a load balancer to send the request, this is the value of
the c-ip field in the CloudFront access logs.


=head2 B<REQUIRED> IPSetId => Str

  The C<IPSetId> for an C<IPSet>. You use C<IPSetId> to get information
about an C<IPSet> (see GetIPSet), update an C<IPSet> (see UpdateIPSet),
insert an C<IPSet> into a C<Rule> or delete one from a C<Rule> (see
UpdateRule), and delete an C<IPSet> from AWS WAF (see DeleteIPSet).

C<IPSetId> is returned by CreateIPSet and by ListIPSets.


=head2 Name => Str

  A friendly name or description of the IPSet. You can't change the name
of an C<IPSet> after you create it.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

