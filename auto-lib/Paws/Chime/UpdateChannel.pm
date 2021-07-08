
package Paws::Chime::UpdateChannel;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has Metadata => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateChannel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::UpdateChannelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UpdateChannel - Arguments for method UpdateChannel on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateChannel on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method UpdateChannel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateChannel.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $UpdateChannelResponse = $chime->UpdateChannel(
      ChannelArn  => 'MyChimeArn',
      Mode        => 'UNRESTRICTED',
      Name        => 'MyNonEmptyResourceName',
      ChimeBearer => 'MyChimeArn',               # OPTIONAL
      Metadata    => 'MyMetadata',               # OPTIONAL
    );

    # Results:
    my $ChannelArn = $UpdateChannelResponse->ChannelArn;

    # Returns a L<Paws::Chime::UpdateChannelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/UpdateChannel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.



=head2 Metadata => Str

The metadata for the update request.



=head2 B<REQUIRED> Mode => Str

The mode of the update request.

Valid values are: C<"UNRESTRICTED">, C<"RESTRICTED">

=head2 B<REQUIRED> Name => Str

The name of the channel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateChannel in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

