package Paws::CloudFront::LambdaFunctionAssociation;
  use Moose;
  has EventType => (is => 'ro', isa => 'Str');
  has LambdaFunctionARN => (is => 'ro', isa => 'Str');
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


=head2 EventType => Str

  Specifies the event type that triggers a Lambda function invocation.
Valid values are:

=over

=item *

C<viewer-request>

=item *

C<origin-request>

=item *

C<viewer-response>

=item *

C<origin-response>

=back



=head2 LambdaFunctionARN => Str

  The ARN of the Lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

