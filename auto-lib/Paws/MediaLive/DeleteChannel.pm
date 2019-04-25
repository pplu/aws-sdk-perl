
package Paws::MediaLive::DeleteChannel;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels/{channelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DeleteChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DeleteChannel - Arguments for method DeleteChannel on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteChannel on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DeleteChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteChannel.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DeleteChannelResponse = $medialive->DeleteChannel(
      ChannelId => 'My__string',

    );

    # Results:
    my $Arn                   = $DeleteChannelResponse->Arn;
    my $Destinations          = $DeleteChannelResponse->Destinations;
    my $EgressEndpoints       = $DeleteChannelResponse->EgressEndpoints;
    my $EncoderSettings       = $DeleteChannelResponse->EncoderSettings;
    my $Id                    = $DeleteChannelResponse->Id;
    my $InputAttachments      = $DeleteChannelResponse->InputAttachments;
    my $InputSpecification    = $DeleteChannelResponse->InputSpecification;
    my $LogLevel              = $DeleteChannelResponse->LogLevel;
    my $Name                  = $DeleteChannelResponse->Name;
    my $PipelinesRunningCount = $DeleteChannelResponse->PipelinesRunningCount;
    my $RoleArn               = $DeleteChannelResponse->RoleArn;
    my $State                 = $DeleteChannelResponse->State;
    my $Tags                  = $DeleteChannelResponse->Tags;

    # Returns a L<Paws::MediaLive::DeleteChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DeleteChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

Unique ID of the channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteChannel in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

