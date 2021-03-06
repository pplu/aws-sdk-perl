# Generated by default/object.tt
package Paws::WAFV2::IPSetForwardedIPConfig;
  use Moose;
  has FallbackBehavior => (is => 'ro', isa => 'Str', required => 1);
  has HeaderName => (is => 'ro', isa => 'Str', required => 1);
  has Position => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::IPSetForwardedIPConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFV2::IPSetForwardedIPConfig object:

  $service_obj->Method(Att1 => { FallbackBehavior => $value, ..., Position => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFV2::IPSetForwardedIPConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->FallbackBehavior

=head1 DESCRIPTION

The configuration for inspecting IP addresses in an HTTP header that
you specify, instead of using the IP address that's reported by the web
request origin. Commonly, this is the X-Forwarded-For (XFF) header, but
you can specify any header name.

If the specified header isn't present in the request, WAF doesn't apply
the rule to the web request at all.

This configuration is used only for IPSetReferenceStatement. For
GeoMatchStatement and RateBasedStatement, use ForwardedIPConfig
instead.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FallbackBehavior => Str

The match status to assign to the web request if the request doesn't
have a valid IP address in the specified position.

If the specified header isn't present in the request, WAF doesn't apply
the rule to the web request at all.

You can specify the following fallback behaviors:

=over

=item *

C<MATCH> - Treat the web request as matching the rule statement. WAF
applies the rule action to the request.

=item *

C<NO_MATCH> - Treat the web request as not matching the rule statement.

=back



=head2 B<REQUIRED> HeaderName => Str

The name of the HTTP header to use for the IP address. For example, to
use the X-Forwarded-For (XFF) header, set this to C<X-Forwarded-For>.

If the specified header isn't present in the request, WAF doesn't apply
the rule to the web request at all.


=head2 B<REQUIRED> Position => Str

The position in the header to search for the IP address. The header can
contain IP addresses of the original client and also of proxies. For
example, the header value could be C<10.1.1.1, 127.0.0.0, 10.10.10.10>
where the first IP address identifies the original client and the rest
identify proxies that the request went through.

The options for this setting are the following:

=over

=item *

FIRST - Inspect the first IP address in the list of IP addresses in the
header. This is usually the client's original IP.

=item *

LAST - Inspect the last IP address in the list of IP addresses in the
header.

=item *

ANY - Inspect all IP addresses in the header for a match. If the header
contains more than 10 IP addresses, WAF inspects the last 10.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

