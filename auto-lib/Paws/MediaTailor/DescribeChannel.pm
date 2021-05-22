
package Paws::MediaTailor::DescribeChannel;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channel/{channelName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaTailor::DescribeChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::DescribeChannel - Arguments for method DescribeChannel on L<Paws::MediaTailor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeChannel on the
L<AWS MediaTailor|Paws::MediaTailor> service. Use the attributes of this class
as arguments to method DescribeChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeChannel.

=head1 SYNOPSIS

    my $api.mediatailor = Paws->service('MediaTailor');
    my $DescribeChannelResponse = $api . mediatailor->DescribeChannel(
      ChannelName => 'My__string',

    );

    # Results:
    my $Arn              = $DescribeChannelResponse->Arn;
    my $ChannelName      = $DescribeChannelResponse->ChannelName;
    my $ChannelState     = $DescribeChannelResponse->ChannelState;
    my $CreationTime     = $DescribeChannelResponse->CreationTime;
    my $LastModifiedTime = $DescribeChannelResponse->LastModifiedTime;
    my $Outputs          = $DescribeChannelResponse->Outputs;
    my $PlaybackMode     = $DescribeChannelResponse->PlaybackMode;
    my $Tags             = $DescribeChannelResponse->Tags;

    # Returns a L<Paws::MediaTailor::DescribeChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.mediatailor/DescribeChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

The identifier for the channel you are working on.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeChannel in L<Paws::MediaTailor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

