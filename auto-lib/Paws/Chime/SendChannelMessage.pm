
package Paws::Chime::SendChannelMessage;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Content => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Str');
  has Persistence => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendChannelMessage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/messages');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::SendChannelMessageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::SendChannelMessage - Arguments for method SendChannelMessage on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendChannelMessage on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method SendChannelMessage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendChannelMessage.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $SendChannelMessageResponse = $chime->SendChannelMessage(
      ChannelArn         => 'MyChimeArn',
      ClientRequestToken => 'MyClientRequestToken',
      Content            => 'MyNonEmptyContent',
      Persistence        => 'PERSISTENT',
      Type               => 'STANDARD',
      ChimeBearer        => 'MyChimeArn',             # OPTIONAL
      Metadata           => 'MyMetadata',             # OPTIONAL
    );

    # Results:
    my $ChannelArn = $SendChannelMessageResponse->ChannelArn;
    my $MessageId  = $SendChannelMessageResponse->MessageId;

    # Returns a L<Paws::Chime::SendChannelMessageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/SendChannelMessage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.



=head2 B<REQUIRED> ClientRequestToken => Str

The C<Idempotency> token for each client request.



=head2 B<REQUIRED> Content => Str

The content of the message.



=head2 Metadata => Str

The optional metadata for each message.



=head2 B<REQUIRED> Persistence => Str

Boolean that controls whether the message is persisted on the back end.
Required.

Valid values are: C<"PERSISTENT">, C<"NON_PERSISTENT">

=head2 B<REQUIRED> Type => Str

The type of message, C<STANDARD> or C<CONTROL>.

Valid values are: C<"STANDARD">, C<"CONTROL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendChannelMessage in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

