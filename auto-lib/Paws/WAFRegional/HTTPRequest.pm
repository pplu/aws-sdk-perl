package Paws::WAFRegional::HTTPRequest;
  use Moose;
  has ClientIP => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has Headers => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::HTTPHeader]');
  has HTTPVersion => (is => 'ro', isa => 'Str');
  has Method => (is => 'ro', isa => 'Str');
  has URI => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::HTTPRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::HTTPRequest object:

  $service_obj->Method(Att1 => { ClientIP => $value, ..., URI => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::HTTPRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientIP

=head1 DESCRIPTION

The response from a GetSampledRequests request includes an
C<HTTPRequest> complex type that appears as C<Request> in the response
syntax. C<HTTPRequest> contains information about one of the web
requests that were returned by C<GetSampledRequests>.

=head1 ATTRIBUTES


=head2 ClientIP => Str

  The IP address that the request originated from. If the C<WebACL> is
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


=head2 Headers => ArrayRef[L<Paws::WAFRegional::HTTPHeader>]

  A complex type that contains two values for each header in the sampled
web request: the name of the header and the value of the header.


=head2 HTTPVersion => Str

  The HTTP version specified in the sampled web request, for example,
C<HTTP/1.1>.


=head2 Method => Str

  The HTTP method specified in the sampled web request. CloudFront
supports the following methods: C<DELETE>, C<GET>, C<HEAD>, C<OPTIONS>,
C<PATCH>, C<POST>, and C<PUT>.


=head2 URI => Str

  The part of a web request that identifies the resource, for example,
C</images/daily-ad.jpg>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

