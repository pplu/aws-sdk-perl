
package Paws::KinesisVideo::DeleteSignalingChannel;
  use Moose;
  has ChannelARN => (is => 'ro', isa => 'Str', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSignalingChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deleteSignalingChannel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::DeleteSignalingChannelOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::DeleteSignalingChannel - Arguments for method DeleteSignalingChannel on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSignalingChannel on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method DeleteSignalingChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSignalingChannel.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $DeleteSignalingChannelOutput = $kinesisvideo->DeleteSignalingChannel(
      ChannelARN     => 'MyResourceARN',
      CurrentVersion => 'MyVersion',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/DeleteSignalingChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelARN => Str

The ARN of the signaling channel that you want to delete.



=head2 CurrentVersion => Str

The current version of the signaling channel that you want to delete.
You can obtain the current version by invoking the
C<DescribeSignalingChannel> or C<ListSignalingChannels> APIs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSignalingChannel in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

