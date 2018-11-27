package Paws::Greengrass::Subscription;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Source => (is => 'ro', isa => 'Str');
  has Subject => (is => 'ro', isa => 'Str');
  has Target => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::Subscription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::Subscription object:

  $service_obj->Method(Att1 => { Id => $value, ..., Target => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::Subscription object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

Information about a subscription.

=head1 ATTRIBUTES


=head2 Id => Str

  A descriptive or arbitrary ID for the subscription. This value must be
unique within the subscription definition version. Max length is 128
characters with pattern ''[a-zA-Z0-9:_-]+''.


=head2 Source => Str

  The source of the subscription. Can be a thing ARN, a Lambda function
ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or
'GGShadowService'.


=head2 Subject => Str

  The subject of the message.


=head2 Target => Str

  Where the message is sent to. Can be a thing ARN, a Lambda function
ARN, a connector ARN, 'cloud' (which represents the AWS IoT cloud), or
'GGShadowService'.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

