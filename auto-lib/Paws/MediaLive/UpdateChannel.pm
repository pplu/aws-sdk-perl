
package Paws::MediaLive::UpdateChannel;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelId', required => 1);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', traits => ['NameInRequest'], request_name => 'destinations');
  has EncoderSettings => (is => 'ro', isa => 'Paws::MediaLive::EncoderSettings', traits => ['NameInRequest'], request_name => 'encoderSettings');
  has InputSpecification => (is => 'ro', isa => 'Paws::MediaLive::InputSpecification', traits => ['NameInRequest'], request_name => 'inputSpecification');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels/{channelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::UpdateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::UpdateChannel - Arguments for method UpdateChannel on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannel on the 
AWS Elemental MediaLive service. Use the attributes of this class
as arguments to method UpdateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannel.

As an example:

  $service_obj->UpdateChannel(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

channel ID



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

This class forms part of L<Paws>, documenting arguments for method UpdateChannel in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

