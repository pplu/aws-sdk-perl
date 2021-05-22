
package Paws::MediaTailor::UpdateChannel;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelName', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::RequestOutputItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{channelName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::UpdateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::UpdateChannel - Arguments for method UpdateChannel on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannel on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method UpdateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannel.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $UpdateChannelResponse = $api . mediatailor->UpdateChannel(
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

    );

    # Results:
    my $Arn              = $UpdateChannelResponse->Arn;
    my $ChannelName      = $UpdateChannelResponse->ChannelName;
    my $ChannelState     = $UpdateChannelResponse->ChannelState;
    my $CreationTime     = $UpdateChannelResponse->CreationTime;
    my $LastModifiedTime = $UpdateChannelResponse->LastModifiedTime;
    my $Outputs          = $UpdateChannelResponse->Outputs;
    my $PlaybackMode     = $UpdateChannelResponse->PlaybackMode;
    my $Tags             = $UpdateChannelResponse->Tags;

    # Returns a L<Paws::MediaTailor::UpdateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/UpdateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The identifier for the channel you are working on.



=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::MediaTailor::RequestOutputItem>]

The channel's output properties.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChannel in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

