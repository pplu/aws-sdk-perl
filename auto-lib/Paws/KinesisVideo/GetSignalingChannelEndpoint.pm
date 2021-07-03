
package Paws::KinesisVideo::GetSignalingChannelEndpoint;
  use Moose;
  has ChannelARN => (is => 'ro', isa => 'Str', required => 1);
  has SingleMasterChannelEndpointConfiguration => (is => 'ro', isa => 'Paws::KinesisVideo::SingleMasterChannelEndpointConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSignalingChannelEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getSignalingChannelEndpoint');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideo::GetSignalingChannelEndpointOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::GetSignalingChannelEndpoint - Arguments for method GetSignalingChannelEndpoint on L<Paws::KinesisVideo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSignalingChannelEndpoint on the
L<Amazon Kinesis Video Streams|Paws::KinesisVideo> service. Use the attributes of this class
as arguments to method GetSignalingChannelEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSignalingChannelEndpoint.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideo');
    my $GetSignalingChannelEndpointOutput =
      $kinesisvideo->GetSignalingChannelEndpoint(
      ChannelARN                               => 'MyResourceARN',
      SingleMasterChannelEndpointConfiguration => {
        Protocols => [
          'WSS', ...    # values: WSS, HTTPS
        ],    # min: 1, max: 5; OPTIONAL
        Role => 'MASTER',    # values: MASTER, VIEWER; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $ResourceEndpointList =
      $GetSignalingChannelEndpointOutput->ResourceEndpointList;

    # Returns a L<Paws::KinesisVideo::GetSignalingChannelEndpointOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/GetSignalingChannelEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelARN => Str

The ARN of the signalling channel for which you want to get an
endpoint.



=head2 SingleMasterChannelEndpointConfiguration => L<Paws::KinesisVideo::SingleMasterChannelEndpointConfiguration>

A structure containing the endpoint configuration for the
C<SINGLE_MASTER> channel type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSignalingChannelEndpoint in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

