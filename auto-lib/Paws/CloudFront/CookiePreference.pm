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

A complex type that specifies the cookie preferences associated with
this cache behavior.

=head1 ATTRIBUTES

=head2 B<REQUIRED> Forward => Str

  Use this element to specify whether you want CloudFront to forward
cookies to the origin that is associated with this cache behavior. You
can specify all, none or whitelist. If you choose All, CloudFront
forwards all cookies regardless of how many your application uses.

=head2 WhitelistedNames => L<Paws::CloudFront::CookieNames>

  A complex type that specifies the whitelisted cookies, if any, that you
want CloudFront to forward to your origin that is associated with this
cache behavior.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

