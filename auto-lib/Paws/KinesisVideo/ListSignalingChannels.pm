
package Paws::KinesisVideo::ListSignalingChannels;
  use Moose;
  has ChannelNameCondition => (is => 'ro', isa => 'Paws::KinesisVideo::ChannelNameCondition');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSignalingChannels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listSignalingChannels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::ListSignalingChannelsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListSignalingChannels - Arguments for method ListSignalingChannels on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSignalingChannels on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method ListSignalingChannels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSignalingChannels.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $ListSignalingChannelsOutput = $kinesisvideo->ListSignalingChannels(
      ChannelNameCondition => {
        ComparisonOperator => 'BEGINS_WITH',     # values: BEGINS_WITH; OPTIONAL
        ComparisonValue    => 'MyChannelName',   # min: 1, max: 256; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ChannelInfoList = $ListSignalingChannelsOutput->ChannelInfoList;
    my $NextToken       = $ListSignalingChannelsOutput->NextToken;

    # Returns a L<Paws::KinesisVideo::ListSignalingChannelsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/ListSignalingChannels>

=head1 ATTRIBUTES


=head2 ChannelNameCondition => L<Paws::KinesisVideo::ChannelNameCondition>

Optional: Returns only the channels that satisfy a specific condition.



=head2 MaxResults => Int

The maximum number of channels to return in the response. The default
is 500.



=head2 NextToken => Str

If you specify this parameter, when the result of a
C<ListSignalingChannels> operation is truncated, the call returns the
C<NextToken> in the response. To get another batch of channels, provide
this token in your next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSignalingChannels in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

