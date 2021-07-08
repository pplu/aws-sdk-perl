
package Paws::LexRuntimeV2::DeleteSession;
  use Moose;
  has BotAliasId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botAliasId', required => 1);
  has BotId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botId', required => 1);
  has LocaleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'localeId', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sessionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSession');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botId}/botAliases/{botAliasId}/botLocales/{localeId}/sessions/{sessionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexRuntimeV2::DeleteSessionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexRuntimeV2::DeleteSession - Arguments for method DeleteSession on L<Paws::LexRuntimeV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSession on the
L<Amazon Lex Runtime V2|Paws::LexRuntimeV2> service. Use the attributes of this class
as arguments to method DeleteSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSession.

=head1 SYNOPSIS

    my $runtime-v2-lex = Paws->service('LexRuntimeV2');
    my $DeleteSessionResponse = $runtime - v2 -lex->DeleteSession(
      BotAliasId => 'MyBotAliasIdentifier',
      BotId      => 'MyBotIdentifier',
      LocaleId   => 'MyLocaleId',
      SessionId  => 'MySessionId',

    );

    # Results:
    my $BotAliasId = $DeleteSessionResponse->BotAliasId;
    my $BotId      = $DeleteSessionResponse->BotId;
    my $LocaleId   = $DeleteSessionResponse->LocaleId;
    my $SessionId  = $DeleteSessionResponse->SessionId;

    # Returns a L<Paws::LexRuntimeV2::DeleteSessionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/runtime-v2-lex/DeleteSession>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAliasId => Str

The alias identifier in use for the bot that contains the session data.



=head2 B<REQUIRED> BotId => Str

The identifier of the bot that contains the session data.



=head2 B<REQUIRED> LocaleId => Str

The locale where the session is in use.



=head2 B<REQUIRED> SessionId => Str

The identifier of the session to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSession in L<Paws::LexRuntimeV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

