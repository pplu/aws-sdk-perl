package Paws::CloudFront::CookiePreference;
  use Moose;
  has Forward => (is => 'ro', isa => 'Str', required => 1);
  has WhitelistedNames => (is => 'ro', isa => 'Paws::CloudFront::CookieNames');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CookiePreference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CookiePreference object:

  $service_obj->Method(Att1 => { Forward => $value, ..., WhitelistedNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CookiePreference object:

  $result = $service_obj->Method(...);
  $result->Att1->Forward

=head1 DESCRIPTION

A complex type that specifies whether you want CloudFront to forward
cookies to the origin and, if so, which ones. For more information
about forwarding cookies to the origin, see How CloudFront Forwards,
Caches, and Logs Cookies
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html)
in the I<Amazon CloudFront Developer Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Forward => Str

  Specifies which cookies to forward to the origin for this cache
behavior: all, none, or the list of cookies specified in the
C<WhitelistedNames> complex type.

Amazon S3 doesn't process cookies. When the cache behavior is
forwarding requests to an Amazon S3 origin, specify none for the
C<Forward> element.


=head2 WhitelistedNames => L<Paws::CloudFront::CookieNames>

  Required if you specify C<whitelist> for the value of C<Forward:>. A
complex type that specifies how many different cookies you want
CloudFront to forward to the origin for this cache behavior and, if you
want to forward selected cookies, the names of those cookies.

If you specify C<all> or none for the value of C<Forward>, omit
C<WhitelistedNames>. If you change the value of C<Forward> from
C<whitelist> to all or none and you don't delete the
C<WhitelistedNames> element and its child elements, CloudFront deletes
them automatically.

For the current limit on the number of cookie names that you can
whitelist for each cache behavior, see Amazon CloudFront Limits
(http://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html#limits_cloudfront)
in the I<AWS General Reference>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

