
package Paws::MediaConnect::AddFlowMediaStreams;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'flowArn', required => 1);
  has MediaStreams => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddMediaStreamRequest]', traits => ['NameInRequest'], request_name => 'mediaStreams', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddFlowMediaStreams');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/flows/{flowArn}/mediaStreams');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::AddFlowMediaStreamsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddFlowMediaStreams - Arguments for method AddFlowMediaStreams on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddFlowMediaStreams on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method AddFlowMediaStreams.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddFlowMediaStreams.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $AddFlowMediaStreamsResponse = $mediaconnect->AddFlowMediaStreams(
      FlowArn      => 'My__string',
      MediaStreams => [
        {
          MediaStreamId   => 1,
          MediaStreamName => 'My__string',
          MediaStreamType => 'video',     # values: video, audio, ancillary-data
          Attributes      => {
            Fmtp => {
              ChannelOrder => 'My__string',
              Colorimetry  => 'BT601'
              , # values: BT601, BT709, BT2020, BT2100, ST2065-1, ST2065-3, XYZ; OPTIONAL
              ExactFramerate => 'My__string',
              Par            => 'My__string',
              Range => 'NARROW',   # values: NARROW, FULL, FULLPROTECT; OPTIONAL
              ScanMode => 'progressive'
              , # values: progressive, interlace, progressive-segmented-frame; OPTIONAL
              Tcs => 'SDR'
              , # values: SDR, PQ, HLG, LINEAR, BT2100LINPQ, BT2100LINHLG, ST2065-1, ST428-1, DENSITY; OPTIONAL
            },    # OPTIONAL
            Lang => 'My__string',
          },    # OPTIONAL
          ClockRate   => 1,
          Description => 'My__string',
          VideoFormat => 'My__string',
        },
        ...
      ],

    );

    # Results:
    my $FlowArn      = $AddFlowMediaStreamsResponse->FlowArn;
    my $MediaStreams = $AddFlowMediaStreamsResponse->MediaStreams;

    # Returns a L<Paws::MediaConnect::AddFlowMediaStreamsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/AddFlowMediaStreams>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FlowArn => Str

The Amazon Resource Name (ARN) of the flow.



=head2 B<REQUIRED> MediaStreams => ArrayRef[L<Paws::MediaConnect::AddMediaStreamRequest>]

The media streams that you want to add to the flow.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddFlowMediaStreams in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

