package Paws::CloudFront::LambdaFunctionAssociation;
  use Moose;
  has EventType => (is => 'ro', isa => 'Str', required => 1);
  has IncludeBody => (is => 'ro', isa => 'Bool');
  has LambdaFunctionARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::LambdaFunctionAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::LambdaFunctionAssociation object:

  $service_obj->Method(Att1 => { EventType => $value, ..., LambdaFunctionARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::LambdaFunctionAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->EventType

=head1 DESCRIPTION

A complex type that contains a Lambda function association.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EventType => Str

  Specifies the event type that triggers a Lambda function invocation.
You can specify the following values:

=over

=item *

C<viewer-request>: The function executes when CloudFront receives a
request from a viewer and before it checks to see whether the requested
object is in the edge cache.

=item *

C<origin-request>: The function executes only when CloudFront forwards
a request to your origin. When the requested object is in the edge
cache, the function doesn't execute.

=item *

C<origin-response>: The function executes after CloudFront receives a
response from the origin and before it caches the object in the
response. When the requested object is in the edge cache, the function
doesn't execute.

=item *

C<viewer-response>: The function executes before CloudFront returns the
requested object to the viewer. The function executes regardless of
whether the object was already in the edge cache.

If the origin returns an HTTP status code other than HTTP 200 (OK), the
function doesn't execute.

=back



=head2 IncludeBody => Bool

  A flag that allows a Lambda function to have read access to the body
content. For more information, see Accessing the Request Body by
Choosing the Include Body Option
(http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-include-body-access.html)
in the Amazon CloudFront Developer Guide.


=head2 B<REQUIRED> LambdaFunctionARN => Str

  The ARN of the Lambda function. You must specify the ARN of a function
version; you can't specify a Lambda alias or $LATEST.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

