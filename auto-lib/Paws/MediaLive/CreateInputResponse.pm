
package Paws::MediaLive::CreateInputResponse;
  use Moose;
  has Destinations => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputDestinationRequest]', traits => ['NameInRequest'], request_name => 'destinations');
  has InputSecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'inputSecurityGroups');
  has MediaConnectFlows => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::MediaConnectFlowRequest]', traits => ['NameInRequest'], request_name => 'mediaConnectFlows');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'requestId');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaLive::InputSourceRequest]', traits => ['NameInRequest'], request_name => 'sources');
  has Tags => (is => 'ro', isa => 'Paws::MediaLive::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::CreateInputResponse

=head1 ATTRIBUTES


=head2 Destinations => ArrayRef[L<Paws::MediaLive::InputDestinationRequest>]

Destination settings for PUSH type inputs.


=head2 InputSecurityGroups => ArrayRef[Str|Undef]

A list of security groups referenced by IDs to attach to the input.


=head2 MediaConnectFlows => ArrayRef[L<Paws::MediaLive::MediaConnectFlowRequest>]

A list of the MediaConnect Flows that you want to use in this input.
You can specify as few as one Flow and presently, as many as two. The
only requirement is when you have more than one is that each Flow is in
a separate Availability Zone as this ensures your EML input is
redundant to AZ issues.


=head2 Name => Str

Name of the input.


=head2 RequestId => Str

Unique identifier of the request to ensure the request is handled
exactly once in case of retries.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role this input assumes during
and after creation.


=head2 Sources => ArrayRef[L<Paws::MediaLive::InputSourceRequest>]

The source URLs for a PULL-type input. Every PULL type input needs
exactly two source URLs for redundancy. Only specify sources for PULL
type Inputs. Leave Destinations empty.


=head2 Tags => L<Paws::MediaLive::Tags>

A collection of key-value pairs.


=head2 Type => Str



Valid values are: C<"UDP_PUSH">, C<"RTP_PUSH">, C<"RTMP_PUSH">, C<"RTMP_PULL">, C<"URL_PULL">, C<"MP4_FILE">, C<"MEDIACONNECT">
=head2 _request_id => Str


=cut

