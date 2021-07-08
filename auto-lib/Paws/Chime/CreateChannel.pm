
package Paws::Chime::CreateChannel;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has ClientRequestToken => (is => 'ro', isa => 'Str', required => 1);
  has Metadata => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Privacy => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateChannel - Arguments for method CreateChannel on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannel on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannel.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateChannelResponse = $chime->CreateChannel(
      AppInstanceArn     => 'MyChimeArn',
      ClientRequestToken => 'MyClientRequestToken',
      Name               => 'MyNonEmptyResourceName',
      ChimeBearer        => 'MyChimeArn',               # OPTIONAL
      Metadata           => 'MyMetadata',               # OPTIONAL
      Mode               => 'UNRESTRICTED',             # OPTIONAL
      Privacy            => 'PUBLIC',                   # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ChannelArn = $CreateChannelResponse->ChannelArn;

    # Returns a L<Paws::Chime::CreateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the channel request.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.



=head2 B<REQUIRED> ClientRequestToken => Str

The client token for the request. An C<Idempotency> token.



=head2 Metadata => Str

The metadata of the creation request. Limited to 1KB and UTF-8.



=head2 Mode => Str

The channel mode: C<UNRESTRICTED> or C<RESTRICTED>. Administrators,
moderators, and channel members can add themselves and other members to
unrestricted channels. Only administrators and moderators can add
members to restricted channels.

Valid values are: C<"UNRESTRICTED">, C<"RESTRICTED">

=head2 B<REQUIRED> Name => Str

The name of the channel.



=head2 Privacy => Str

The channel's privacy level: C<PUBLIC> or C<PRIVATE>. Private channels
aren't discoverable by users outside the channel. Public channels are
discoverable by anyone in the C<AppInstance>.

Valid values are: C<"PUBLIC">, C<"PRIVATE">

=head2 Tags => ArrayRef[L<Paws::Chime::Tag>]

The tags for the creation request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannel in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

