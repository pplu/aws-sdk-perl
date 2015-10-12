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

=head1 DESCRIPTION

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

=head1 ATTRIBUTES

=head2 ErrorCachingMinTTL => Int

  

The minimum amount of time you want HTTP error codes to stay in
CloudFront caches before CloudFront queries your origin to see whether
the object has been updated. You can specify a value from 0 to
31,536,000.










=head2 B<REQUIRED> ErrorCode => Int

  

The 4xx or 5xx HTTP status code that you want to customize. For a list
of HTTP status codes that you can customize, see CloudFront
documentation.










=head2 ResponseCode => Str

  

The HTTP status code that you want CloudFront to return with the custom
error page to the viewer. For a list of HTTP status codes that you can
replace, see CloudFront Documentation.










=head2 ResponsePagePath => Str

  

The path of the custom error page (for example, /custom_404.html). The
path is relative to the distribution and must begin with a slash (/).
If the path includes any non-ASCII characters or unsafe characters as
defined in RFC 1783 (http://www.ietf.org/rfc/rfc1738.txt), URL encode
those characters. Do not URL encode any other characters in the path,
or CloudFront will not return the custom error page to the viewer.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

