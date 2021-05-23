
package Paws::IVS::CreateChannel;
  use Moose;
  has Authorized => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'authorized');
  has LatencyMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'latencyMode');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RecordingConfigurationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'recordingConfigurationArn');
  has Tags => (is => 'ro', isa => 'Paws::IVS::Tags', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/CreateChannel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IVS::CreateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::CreateChannel - Arguments for method CreateChannel on L<Paws::IVS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the
L<Amazon Interactive Video Service|Paws::IVS> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

=head1 SYNOPSIS

    my $ivs = Paws->service('IVS');
    my $CreateChannelResponse = $ivs->CreateChannel(
      Authorized  => 1,                  # OPTIONAL
      LatencyMode => 'NORMAL',           # OPTIONAL
      Name        => 'MyChannelName',    # OPTIONAL
      RecordingConfigurationArn =>
        'MyChannelRecordingConfigurationArn',    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      Type => 'BASIC',    # OPTIONAL
    );

    # Results:
    my $Channel   = $CreateChannelResponse->Channel;
    my $StreamKey = $CreateChannelResponse->StreamKey;

    # Returns a L<Paws::IVS::CreateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ivs/CreateChannel>

=head1 ATTRIBUTES


=head2 Authorized => Bool

Whether the channel is private (enabled for playback authorization).
Default: C<false>.



=head2 LatencyMode => Str

Channel latency mode. Use C<NORMAL> to broadcast and deliver live video
up to Full HD. Use C<LOW> for near-real-time interaction with viewers.
(Note: In the Amazon IVS console, C<LOW> and C<NORMAL> correspond to
Ultra-low and Standard, respectively.) Default: C<LOW>.

Valid values are: C<"NORMAL">, C<"LOW">

=head2 Name => Str

Channel name.



=head2 RecordingConfigurationArn => Str

Recording-configuration ARN. Default: "" (empty string, recording is
disabled).



=head2 Tags => L<Paws::IVS::Tags>

Array of 1-50 maps, each of the form C<string:string (key:value)>.



=head2 Type => Str

Channel type, which determines the allowable resolution and bitrate.
I<If you exceed the allowable resolution or bitrate, the stream
probably will disconnect immediately.> Default: C<STANDARD>. Valid
values:

=over

=item *

C<STANDARD>: Multiple qualities are generated from the original input,
to automatically give viewers the best experience for their devices and
network conditions. Vertical resolution can be up to 1080 and bitrate
can be up to 8.5 Mbps.

=item *

C<BASIC>: Amazon IVS delivers the original input to viewers. The
viewerE<rsquo>s video-quality choice is limited to the original input.
Vertical resolution can be up to 480 and bitrate can be up to 1.5 Mbps.

=back


Valid values are: C<"BASIC">, C<"STANDARD">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::IVS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

