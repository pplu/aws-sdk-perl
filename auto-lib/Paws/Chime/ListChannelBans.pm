
package Paws::Chime::ListChannelBans;
  use Moose;
  has ChannelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'channelArn', required => 1);
  has ChimeBearer => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-chime-bearer');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannelBans');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/channels/{channelArn}/bans');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListChannelBansResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListChannelBans - Arguments for method ListChannelBans on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannelBans on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListChannelBans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannelBans.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListChannelBansResponse = $chime->ListChannelBans(
      ChannelArn  => 'MyChimeArn',
      ChimeBearer => 'MyChimeArn',     # OPTIONAL
      MaxResults  => 1,                # OPTIONAL
      NextToken   => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ChannelArn  = $ListChannelBansResponse->ChannelArn;
    my $ChannelBans = $ListChannelBansResponse->ChannelBans;
    my $NextToken   = $ListChannelBansResponse->NextToken;

    # Returns a L<Paws::Chime::ListChannelBansResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListChannelBans>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChannelArn => Str

The ARN of the channel.



=head2 ChimeBearer => Str

The C<AppInstanceUserArn> of the user that makes the API call.



=head2 MaxResults => Int

The maximum number of bans that you want returned.



=head2 NextToken => Str

The token passed by previous API calls until all requested bans are
returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannelBans in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

