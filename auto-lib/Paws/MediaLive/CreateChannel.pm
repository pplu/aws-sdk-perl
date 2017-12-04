package Paws::MediaLive::CreateChannel;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', request_name => 'destinations', traits => ['NameInRequest']);
  has EncoderSettings => (is => 'ro', isa => 'Paws::MediaLive::EncoderSettings', request_name => 'encoderSettings', traits => ['NameInRequest']);
  has InputAttachments => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputAttachment]', request_name => 'inputAttachments', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RequestId => (is => 'ro', isa => 'Str', request_name => 'requestId', traits => ['NameInRequest']);
  has Reserved => (is => 'ro', isa => 'Str', request_name => 'reserved', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateChannel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::CreateChannel object:

  $service_obj->Method(Att1 => { Destinations => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::CreateChannel object:

  $result = $service_obj->Method(...);
  $result->Att1->Destinations

=head1 DESCRIPTION

Placeholder documentation for CreateChannel

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]

  


=head2 EncoderSettings => L<Paws::MediaLive::EncoderSettings>

  


=head2 InputAttachments => ArrayRef[L<Paws::MediaLive::InputAttachment>]

  List of input attachments for channel.


=head2 Name => Str

  Name of channel.


=head2 RequestId => Str

  Unique request ID to be specified. This is needed to prevent retries
from creating multiple resources.


=head2 Reserved => Str

  Reserved for future use.


=head2 RoleArn => Str

  An optional Amazon Resource Name (ARN) of the role to assume when
running the Channel.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

