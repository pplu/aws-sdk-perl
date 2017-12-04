package Paws::CloudFront::CookieNames;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'Name', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CookieNames

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CookieNames object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CookieNames object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex type that specifies whether you want CloudFront to forward
cookies to the origin and, if so, which ones. For more information
about forwarding cookies to the origin, see How CloudFront Forwards,
Caches, and Logs Cookies
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Cookies.html)
in the I<Amazon CloudFront Developer Guide>.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[Str|Undef]

  A complex type that contains one C<Name> element for each cookie that
you want CloudFront to forward to the origin for this cache behavior.


=head2 B<REQUIRED> Quantity => Int

  The number of different cookies that you want CloudFront to forward to
the origin for this cache behavior.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

