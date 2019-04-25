package Paws::MediaLive::Channel;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', request_name => 'destinations', traits => ['NameInRequest']);
  has EgressEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::ChannelEgressEndpoint]', request_name => 'egressEndpoints', traits => ['NameInRequest']);
  has EncoderSettings => (is => 'ro', isa => 'Paws::MediaLive::EncoderSettings', request_name => 'encoderSettings', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has InputAttachments => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputAttachment]', request_name => 'inputAttachments', traits => ['NameInRequest']);
  has InputSpecification => (is => 'ro', isa => 'Paws::MediaLive::InputSpecification', request_name => 'inputSpecification', traits => ['NameInRequest']);
  has LogLevel => (is => 'ro', isa => 'Str', request_name => 'logLevel', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has PipelinesRunningCount => (is => 'ro', isa => 'Int', request_name => 'pipelinesRunningCount', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', request_name => 'tags', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::Channel

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::Channel object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Tags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::Channel object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Placeholder documentation for Channel

=head1 ATTRIBUTES


=head2 Arn => Str

  The unique arn of the channel.


=head2 Destinations => ArrayRef[L<Paws::MediaLive::OutputDestination>]

  A list of destinations of the channel. For UDP outputs, there is one
destination per output. For other types (HLS, for example), there is
one destination per packager.


=head2 EgressEndpoints => ArrayRef[L<Paws::MediaLive::ChannelEgressEndpoint>]

  The endpoints where outgoing connections initiate from


=head2 EncoderSettings => L<Paws::MediaLive::EncoderSettings>

  


=head2 Id => Str

  The unique id of the channel.


=head2 InputAttachments => ArrayRef[L<Paws::MediaLive::InputAttachment>]

  List of input attachments for channel.


=head2 InputSpecification => L<Paws::MediaLive::InputSpecification>

  


=head2 LogLevel => Str

  The log level being written to CloudWatch Logs.


=head2 Name => Str

  The name of the channel. (user-mutable)


=head2 PipelinesRunningCount => Int

  The number of currently healthy pipelines.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of the role assumed when running the
Channel.


=head2 State => Str

  


=head2 Tags => L<Paws::MediaLive::Tags>

  A collection of key-value pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

