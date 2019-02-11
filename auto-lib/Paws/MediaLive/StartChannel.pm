
package Paws::MediaLive::StartChannel;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels/{channelId}/start');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::StartChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StartChannel - Arguments for method StartChannel on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartChannel on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method StartChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartChannel.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $StartChannelResponse = $medialive->StartChannel(
      ChannelId => 'My__string',

    );

    # Results:
    my $Arn                   = $StartChannelResponse->Arn;
    my $Destinations          = $StartChannelResponse->Destinations;
    my $EgressEndpoints       = $StartChannelResponse->EgressEndpoints;
    my $EncoderSettings       = $StartChannelResponse->EncoderSettings;
    my $Id                    = $StartChannelResponse->Id;
    my $InputAttachments      = $StartChannelResponse->InputAttachments;
    my $InputSpecification    = $StartChannelResponse->InputSpecification;
    my $LogLevel              = $StartChannelResponse->LogLevel;
    my $Name                  = $StartChannelResponse->Name;
    my $PipelinesRunningCount = $StartChannelResponse->PipelinesRunningCount;
    my $RoleArn               = $StartChannelResponse->RoleArn;
    my $State                 = $StartChannelResponse->State;
    my $Tags                  = $StartChannelResponse->Tags;

    # Returns a L<Paws::MediaLive::StartChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/StartChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

A request to start a channel




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartChannel in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

