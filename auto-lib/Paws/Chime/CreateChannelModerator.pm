
package Paws::Chime::CreateChannelModerator;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChannelModeratorArn => (is => 'ro', isa => 'Str', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateChannelModerator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/moderators');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::CreateChannelModeratorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreateChannelModerator - Arguments for method CreateChannelModerator on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateChannelModerator on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method CreateChannelModerator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateChannelModerator.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $CreateChannelModeratorResponse = $chime->CreateChannelModerator(
      ChannelArn          => 'MyChimeArn',
      ChannelModeratorArn => 'MyChimeArn',
      ChimeBearer         => 'MyChimeArn',    # OPTIONAL
    );

    # Results:
    my $ChannelArn       = $CreateChannelModeratorResponse->ChannelArn;
    my $ChannelModerator = $CreateChannelModeratorResponse->ChannelModerator;

    # Returns a L<Paws::Chime::CreateChannelModeratorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/CreateChannelModerator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 B<REQUIRED> ChannelModeratorArn => Str

The ARN of the moderator.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateChannelModerator in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

