
package Paws::KinesisVideo::DescribeSignalingChannel;
  use Moose;
  has ChannelARN => (is => 'ro', isa => 'Str');
  has ChannelName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSignalingChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeSignalingChannel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::DescribeSignalingChannelOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DescribeSignalingChannel - Arguments for method DescribeSignalingChannel on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSignalingChannel on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method DescribeSignalingChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSignalingChannel.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $DescribeSignalingChannelOutput =
      $kinesisvideo->DescribeSignalingChannel(
      ChannelARN  => 'MyResourceARN',    # OPTIONAL
      ChannelName => 'MyChannelName',    # OPTIONAL
      );

    # Results:
    my $ChannelInfo = $DescribeSignalingChannelOutput->ChannelInfo;

    # Returns a L<Paws::KinesisVideo::DescribeSignalingChannelOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/DescribeSignalingChannel>

=head1 ATTRIBUTES


=head2 ChannelARN => Str

The ARN of the signaling channel that you want to describe.



=head2 ChannelName => Str

The name of the signaling channel that you want to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSignalingChannel in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

