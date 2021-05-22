
package Paws::Chime::ListChannels;
  use Moose;
  has AppInstanceArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'app-instance-arn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has Privacy => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'privacy');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannels');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListChannelsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListChannels - Arguments for method ListChannels on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannels on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListChannels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannels.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListChannelsResponse = $chime->ListChannels(
      AppInstanceArn => 'MyChimeArn',
      ChimeBearer    => 'MyChimeArn',     # OPTIONAL
      MaxResults     => 1,                # OPTIONAL
      NextToken      => 'MyNextToken',    # OPTIONAL
      Privacy        => 'PUBLIC',         # OPTIONAL
    );

    # Results:
    my $Channels  = $ListChannelsResponse->Channels;
    my $NextToken = $ListChannelsResponse->NextToken;

    # Returns a L<Paws::Chime::ListChannelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListChannels>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppInstanceArn => Str

The ARN of the C<AppInstance>.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.



=head2 MaxResults => Int

The maximum number of channels that you want to return.



=head2 NextToken => Str

The token passed by previous API calls until all requested channels are
returned.



=head2 Privacy => Str

The privacy setting. C<PUBLIC> retrieves all the public channels.
C<PRIVATE> retrieves private channels. Only an C<AppInstanceAdmin> can
retrieve private channels.

Valid values are: C<"PUBLIC">, C<"PRIVATE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannels in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

