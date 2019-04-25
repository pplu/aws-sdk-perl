
package Paws::MediaLive::DeleteChannelResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::OutputDestination]', traits => ['NameInRequest'], request_name => 'destinations');
  has EgressEndpoints => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::ChannelEgressEndpoint]', traits => ['NameInRequest'], request_name => 'egressEndpoints');
  has EncoderSettings => (is => 'ro', isa => 'Paws::MediaLive::EncoderSettings', traits => ['NameInRequest'], request_name => 'encoderSettings');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has InputAttachments => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputAttachment]', traits => ['NameInRequest'], request_name => 'inputAttachments');
  has InputSpecification => (is => 'ro', isa => 'Paws::MediaLive::InputSpecification', traits => ['NameInRequest'], request_name => 'inputSpecification');
  has LogLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logLevel');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PipelinesRunningCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'pipelinesRunningCount');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DeleteChannelResponse

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

Valid values are: C<"ERROR">, C<"WARNING">, C<"INFO">, C<"DEBUG">, C<"DISABLED">
=head2 Name => Str

The name of the channel. (user-mutable)


=head2 PipelinesRunningCount => Int

The number of currently healthy pipelines.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role assumed when running the
Channel.


=head2 State => Str



Valid values are: C<"CREATING">, C<"CREATE_FAILED">, C<"IDLE">, C<"STARTING">, C<"RUNNING">, C<"RECOVERING">, C<"STOPPING">, C<"DELETING">, C<"DELETED">
=head2 Tags => L<Paws::MediaLive::Tags>

A collection of key-value pairs.


=head2 _request_id => Str


=cut

