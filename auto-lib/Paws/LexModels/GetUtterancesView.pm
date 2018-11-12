
package Paws::LexModels::GetUtterancesView;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botname', required => 1);
  has BotVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'bot_versions', required => 1);
  has StatusType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'status_type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUtterancesView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botname}/utterances?view=aggregation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetUtterancesViewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetUtterancesView - Arguments for method GetUtterancesView on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUtterancesView on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetUtterancesView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUtterancesView.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetUtterancesViewResponse = $models . lex->GetUtterancesView(
      BotName     => 'MyBotName',
      BotVersions => [
        'MyVersion', ...    # min: 1, max: 64
      ],
      StatusType => 'Detected',

    );

    # Results:
    my $BotName    = $GetUtterancesViewResponse->BotName;
    my $Utterances = $GetUtterancesViewResponse->Utterances;

    # Returns a L<Paws::LexModels::GetUtterancesViewResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetUtterancesView>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name of the bot for which utterance information should be returned.



=head2 B<REQUIRED> BotVersions => ArrayRef[Str|Undef]

An array of bot versions for which utterance information should be
returned. The limit is 5 versions per request.



=head2 B<REQUIRED> StatusType => Str

To return utterances that were recognized and handled, useC<Detected>.
To return utterances that were not recognized, use C<Missed>.

Valid values are: C<"Detected">, C<"Missed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUtterancesView in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

