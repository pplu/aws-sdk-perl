
package Paws::KinesisVideo::CreateSignalingChannel;
  use Moose;
  has ChannelName => (is => 'ro', isa => 'Str', required => 1);
  has ChannelType => (is => 'ro', isa => 'Str');
  has SingleMasterConfiguration => (is => 'ro', isa => 'Paws::KinesisVideo::SingleMasterConfiguration');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::KinesisVideo::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSignalingChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createSignalingChannel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::CreateSignalingChannelOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::CreateSignalingChannel - Arguments for method CreateSignalingChannel on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSignalingChannel on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method CreateSignalingChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSignalingChannel.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $CreateSignalingChannelOutput = $kinesisvideo->CreateSignalingChannel(
      ChannelName               => 'MyChannelName',
      ChannelType               => 'SINGLE_MASTER',    # OPTIONAL
      SingleMasterConfiguration => {
        MessageTtlSeconds => 1,    # min: 5, max: 120; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $ChannelARN = $CreateSignalingChannelOutput->ChannelARN;

    # Returns a L<Paws::KinesisVideo::CreateSignalingChannelOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/CreateSignalingChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelName => Str

A name for the signaling channel that you are creating. It must be
unique for each AWS account and AWS Region.



=head2 ChannelType => Str

A type of the signaling channel that you are creating. Currently,
C<SINGLE_MASTER> is the only supported channel type.

Valid values are: C<"SINGLE_MASTER">

=head2 SingleMasterConfiguration => L<Paws::KinesisVideo::SingleMasterConfiguration>

A structure containing the configuration for the C<SINGLE_MASTER>
channel type.



=head2 Tags => ArrayRef[L<Paws::KinesisVideo::Tag>]

A set of tags (key-value pairs) that you want to associate with this
channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSignalingChannel in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

