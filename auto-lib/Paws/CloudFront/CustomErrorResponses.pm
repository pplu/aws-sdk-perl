package Paws::CloudFront::CustomErrorResponses;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::CustomErrorResponse]', request_name => 'CustomErrorResponse', traits => ['NameInRequest']);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CustomErrorResponses

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CustomErrorResponses object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CustomErrorResponses object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

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


=head2 Items => ArrayRef[L<Paws::CloudFront::CustomErrorResponse>]

  A complex type that contains a C<CustomErrorResponse> element for each
HTTP status code for which you want to specify a custom error page
and/or a caching duration.


=head2 B<REQUIRED> Quantity => Int

  The number of HTTP status codes for which you want to specify a custom
error page and/or a caching duration. If C<Quantity> is C<0>, you can
omit C<Items>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

