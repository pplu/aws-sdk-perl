
package Paws::KinesisVideoSignaling::GetIceServerConfig;
  use Moose;
  has ChannelARN => (is => 'ro', isa => 'Str', required => 1);
  has ClientId => (is => 'ro', isa => 'Str');
  has Service => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIceServerConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/get-ice-server-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisVideoSignaling::GetIceServerConfigResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideoSignaling::GetIceServerConfig - Arguments for method GetIceServerConfig on L<Paws::KinesisVideoSignaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIceServerConfig on the
L<Amazon Kinesis Video Signaling Channels|Paws::KinesisVideoSignaling> service. Use the attributes of this class
as arguments to method GetIceServerConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIceServerConfig.

=head1 SYNOPSIS

    my $kinesisvideo = Paws->service('KinesisVideoSignaling');
    my $GetIceServerConfigResponse = $kinesisvideo->GetIceServerConfig(
      ChannelARN => 'MyResourceARN',
      ClientId   => 'MyClientId',      # OPTIONAL
      Service    => 'TURN',            # OPTIONAL
      Username   => 'MyUsername',      # OPTIONAL
    );

    # Results:
    my $IceServerList = $GetIceServerConfigResponse->IceServerList;

  # Returns a L<Paws::KinesisVideoSignaling::GetIceServerConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisvideo/GetIceServerConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelARN => Str

The ARN of the signaling channel to be used for the peer-to-peer
connection between configured peers.



=head2 ClientId => Str

Unique identifier for the viewer. Must be unique within the signaling
channel.



=head2 Service => Str

Specifies the desired service. Currently, C<TURN> is the only valid
value.

Valid values are: C<"TURN">

=head2 Username => Str

An optional user ID to be associated with the credentials.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIceServerConfig in L<Paws::KinesisVideoSignaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

