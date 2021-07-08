
package Paws::MediaTailor::CreateChannel;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelName', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::RequestOutputItem]', required => 1);
  has PlaybackMode => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::MediaTailor::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{channelName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::CreateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::CreateChannel - Arguments for method CreateChannel on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $CreateChannelResponse = $api . mediatailor->CreateChannel(
      ChannelName => 'My__string',
      Outputs     => [
        {
          ManifestName         => 'My__string',
          SourceGroup          => 'My__string',
          DashPlaylistSettings => {
            ManifestWindowSeconds             => 1,    # OPTIONAL
            MinBufferTimeSeconds              => 1,    # OPTIONAL
            MinUpdatePeriodSeconds            => 1,    # OPTIONAL
            SuggestedPresentationDelaySeconds => 1,    # OPTIONAL
          },    # OPTIONAL
          HlsPlaylistSettings => {
            ManifestWindowSeconds => 1,    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      PlaybackMode => 'LOOP',
      Tags         => { 'My__string' => 'My__string', },    # OPTIONAL
    );

    # Results:
    my $Arn              = $CreateChannelResponse->Arn;
    my $ChannelName      = $CreateChannelResponse->ChannelName;
    my $ChannelState     = $CreateChannelResponse->ChannelState;
    my $CreationTime     = $CreateChannelResponse->CreationTime;
    my $LastModifiedTime = $CreateChannelResponse->LastModifiedTime;
    my $Outputs          = $CreateChannelResponse->Outputs;
    my $PlaybackMode     = $CreateChannelResponse->PlaybackMode;
    my $Tags             = $CreateChannelResponse->Tags;

    # Returns a L<Paws::MediaTailor::CreateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/CreateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The identifier for the channel you are working on.



=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::MediaTailor::RequestOutputItem>]

The channel's output properties.



=head2 B<REQUIRED> PlaybackMode => Str

The type of playback mode for this channel. The only supported value is
LOOP.

Valid values are: C<"LOOP">

=head2 Tags => L<Paws::MediaTailor::__mapOf__string>

The tags to assign to the channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

