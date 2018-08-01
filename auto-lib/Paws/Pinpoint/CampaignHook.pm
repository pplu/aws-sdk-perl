package Paws::Pinpoint::CampaignHook;
  use Moose;
  has LambdaFunctionName => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str');
  has WebUrl => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::CampaignHook

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::CampaignHook object:

  $service_obj->Method(Att1 => { LambdaFunctionName => $value, ..., WebUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::CampaignHook object:

  $result = $service_obj->Method(...);
  $result->Att1->LambdaFunctionName

=head1 DESCRIPTION

Specifies the AWS Lambda function to use as a code hook for a campaign.

=head1 ATTRIBUTES


=head2 LambdaFunctionName => Str

  The name or Amazon Resource Name (ARN) of the AWS Lambda function that
Amazon Pinpoint invokes to send messages for a campaign.


=head2 Mode => Str

  Specifies which Lambda mode to use when invoking the AWS Lambda
function.


=head2 WebUrl => Str

  The web URL that Amazon Pinpoint calls to invoke the AWS Lambda
function over HTTPS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

