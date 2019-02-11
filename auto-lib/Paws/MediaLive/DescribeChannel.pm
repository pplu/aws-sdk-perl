
package Paws::MediaLive::DescribeChannel;
  use Moose;
  has ChannelId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/channels/{channelId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DescribeChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeChannel - Arguments for method DescribeChannel on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChannel on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DescribeChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChannel.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DescribeChannelResponse = $medialive->DescribeChannel(
      ChannelId => 'My__string',

    );

    # Results:
    my $Arn                   = $DescribeChannelResponse->Arn;
    my $Destinations          = $DescribeChannelResponse->Destinations;
    my $EgressEndpoints       = $DescribeChannelResponse->EgressEndpoints;
    my $EncoderSettings       = $DescribeChannelResponse->EncoderSettings;
    my $Id                    = $DescribeChannelResponse->Id;
    my $InputAttachments      = $DescribeChannelResponse->InputAttachments;
    my $InputSpecification    = $DescribeChannelResponse->InputSpecification;
    my $LogLevel              = $DescribeChannelResponse->LogLevel;
    my $Name                  = $DescribeChannelResponse->Name;
    my $PipelinesRunningCount = $DescribeChannelResponse->PipelinesRunningCount;
    my $RoleArn               = $DescribeChannelResponse->RoleArn;
    my $State                 = $DescribeChannelResponse->State;
    my $Tags                  = $DescribeChannelResponse->Tags;

    # Returns a L<Paws::MediaLive::DescribeChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DescribeChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelId => Str

channel ID




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChannel in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

