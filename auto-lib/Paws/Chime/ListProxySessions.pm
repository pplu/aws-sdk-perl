
package Paws::Chime::ListProxySessions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has Status => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status');
  has VoiceConnectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'voiceConnectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProxySessions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/voice-connectors/{voiceConnectorId}/proxy-sessions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListProxySessionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListProxySessions - Arguments for method ListProxySessions on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProxySessions on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListProxySessions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProxySessions.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListProxySessionsResponse = $chime->ListProxySessions(
      VoiceConnectorId => 'MyNonEmptyString128',
      MaxResults       => 1,                       # OPTIONAL
      NextToken        => 'MyNextTokenString',     # OPTIONAL
      Status           => 'Open',                  # OPTIONAL
    );

    # Results:
    my $NextToken     = $ListProxySessionsResponse->NextToken;
    my $ProxySessions = $ListProxySessionsResponse->ProxySessions;

    # Returns a L<Paws::Chime::ListProxySessionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListProxySessions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results.



=head2 Status => Str

The proxy session status.

Valid values are: C<"Open">, C<"InProgress">, C<"Closed">

=head2 B<REQUIRED> VoiceConnectorId => Str

The Amazon Chime voice connector ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProxySessions in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

