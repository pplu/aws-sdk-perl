package Paws::CloudFront::CustomErrorResponse;
  use Moose;
  has ErrorCachingMinTTL => (is => 'ro', isa => 'Int');
  has ErrorCode => (is => 'ro', isa => 'Int', required => 1);
  has ResponseCode => (is => 'ro', isa => 'Str');
  has ResponsePagePath => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CustomErrorResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CustomErrorResponse object:

  $service_obj->Method(Att1 => { ErrorCachingMinTTL => $value, ..., ResponsePagePath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CustomErrorResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorCachingMinTTL

=head1 DESCRIPTION

A complex type that controls:

=over

=item *

Whether CloudFront replaces HTTP status codes in the 4xx and 5xx range
with custom error messages before returning the response to the viewer.

=item *

How long CloudFront caches HTTP status codes in the 4xx and 5xx range.

=back

For more information about custom error pages, see Customizing Error
Responses
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html)
in the I<Amazon CloudFront Developer Guide>.

=head1 ATTRIBUTES


=head2 ErrorCachingMinTTL => Int

  The minimum amount of time, in seconds, that you want CloudFront to
cache the HTTP status code specified in C<ErrorCode>. When this time
period has elapsed, CloudFront queries your origin to see whether the
problem that caused the error has been resolved and the requested
object is now available.

If you don't want to specify a value, include an empty element,
C<E<lt>ErrorCachingMinTTLE<gt>>, in the XML document.

For more information, see Customizing Error Responses
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/custom-error-pages.html)
in the I<Amazon CloudFront Developer Guide>.


=head2 B<REQUIRED> ErrorCode => Int

  The HTTP status code for which you want to specify a custom error page
and/or a caching duration.


=head2 ResponseCode => Str

  The HTTP status code that you want CloudFront to return to the viewer
along with the custom error page. There are a variety of reasons that
you might want CloudFront to return a status code different from the
status code that your origin returned to CloudFront, for example:

=over

=item *

Some Internet devices (some firewalls and corporate proxies, for
example) intercept HTTP 4xx and 5xx and prevent the response from being
returned to the viewer. If you substitute C<200>, the response
typically won't be intercepted.

=item *

If you don't care about distinguishing among different client errors or
server errors, you can specify C<400> or C<500> as the C<ResponseCode>
for all 4xx or 5xx errors.

=item *

You might want to return a C<200> status code (OK) and static website
so your customers don't know that your website is down.

=back

If you specify a value for C<ResponseCode>, you must also specify a
value for C<ResponsePagePath>. If you don't want to specify a value,
include an empty element, C<E<lt>ResponseCodeE<gt>>, in the XML
document.


=head2 ResponsePagePath => Str

  The path to the custom error page that you want CloudFront to return to
a viewer when your origin returns the HTTP status code specified by
C<ErrorCode>, for example, C</4xx-errors/403-forbidden.html>. If you
want to store your objects and your custom error pages in different
locations, your distribution must include a cache behavior for which
the following is true:

=over

=item *

The value of C<PathPattern> matches the path to your custom error
messages. For example, suppose you saved custom error pages for 4xx
errors in an Amazon S3 bucket in a directory named C</4xx-errors>. Your
distribution must include a cache behavior for which the path pattern
routes requests for your custom error pages to that location, for
example, C</4xx-errors/*>.

=item *

The value of C<TargetOriginId> specifies the value of the C<ID> element
for the origin that contains your custom error pages.

=back

If you specify a value for C<ResponsePagePath>, you must also specify a
value for C<ResponseCode>. If you don't want to specify a value,
include an empty element, C<E<lt>ResponsePagePathE<gt>>, in the XML
document.

We recommend that you store custom error pages in an Amazon S3 bucket.
If you store custom error pages on an HTTP server and the server starts
to return 5xx errors, CloudFront can't get the files that you want to
return to viewers because the origin server is unavailable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

