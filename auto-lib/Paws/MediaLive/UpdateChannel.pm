package Paws::MediaLive::UpdateChannel;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', request_name => 'destinations', traits => ['NameInRequest']);
  has EncoderSettings => (is => 'ro', isa => 'Paws::MediaLive::EncoderSettings', request_name => 'encoderSettings', traits => ['NameInRequest']);
  has InputSpecification => (is => 'ro', isa => 'Paws::MediaLive::InputSpecification', request_name => 'inputSpecification', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateChannel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::UpdateChannel object:

  $service_obj->Method(Att1 => { Destinations => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::UpdateChannel object:

  $result = $service_obj->Method(...);
  $result->Att1->Destinations

=head1 DESCRIPTION

Placeholder documentation for UpdateChannel

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]

  A list of output destinations for this channel.


=head2 EncoderSettings => L<Paws::MediaLive::EncoderSettings>

  The encoder settings for this channel.


=head2 InputSpecification => L<Paws::MediaLive::InputSpecification>

  Specification of input for this channel (max. bitrate, resolution,
codec, etc.)


=head2 Name => Str

  The name of the channel.


=head2 RoleArn => Str

  An optional Amazon Resource Name (ARN) of the role to assume when
running the Channel. If you do not specify this on an update call but
the role was previously set that role will be removed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

