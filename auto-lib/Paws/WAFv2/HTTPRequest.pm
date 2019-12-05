package Paws::WAFv2::HTTPRequest;
  use Moose;
  has ClientIP => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has Headers => (is => 'ro', isa => 'ArrayRef[Paws::WAFv2::HTTPHeader]');
  has HTTPVersion => (is => 'ro', isa => 'Str');
  has Method => (is => 'ro', isa => 'Str');
  has URI => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::HTTPRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::HTTPRequest object:

  $service_obj->Method(Att1 => { ClientIP => $value, ..., URI => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::HTTPRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientIP

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

Part of the response from GetSampledRequests. This is a complex type
that appears as C<Request> in the response syntax. C<HTTPRequest>
contains information about one of the web requests.

=head1 ATTRIBUTES


=head2 ClientIP => Str

  The IP address that the request originated from. If the web ACL is
associated with a CloudFront distribution, this is the value of one of
the following fields in CloudFront access logs:

=over

=item *

C<c-ip>, if the viewer did not use an HTTP proxy or a load balancer to
send the request

=item *

C<x-forwarded-for>, if the viewer did use an HTTP proxy or a load
balancer to send the request

=back



=head2 Country => Str

  The two-letter country code for the country that the request originated
from. For a current list of country codes, see the Wikipedia entry ISO
3166-1 alpha-2 (https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2).


=head2 Headers => ArrayRef[L<Paws::WAFv2::HTTPHeader>]

  A complex type that contains the name and value for each header in the
sampled web request.


=head2 HTTPVersion => Str

  The HTTP version specified in the sampled web request, for example,
C<HTTP/1.1>.


=head2 Method => Str

  The HTTP method specified in the sampled web request.


=head2 URI => Str

  The URI path of the request, which identifies the resource, for
example, C</images/daily-ad.jpg>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

