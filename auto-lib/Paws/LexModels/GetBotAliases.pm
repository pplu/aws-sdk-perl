
package Paws::LexModels::GetBotAliases;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBotAliases');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botName}/aliases/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBotAliasesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotAliases - Arguments for method GetBotAliases on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBotAliases on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetBotAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBotAliases.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetBotAliasesResponse = $models . lex->GetBotAliases(
      BotName      => 'MyBotName',
      MaxResults   => 1,                # OPTIONAL
      NameContains => 'MyAliasName',    # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $BotAliases = $GetBotAliasesResponse->BotAliases;
    my $NextToken  = $GetBotAliasesResponse->NextToken;

    # Returns a L<Paws::LexModels::GetBotAliasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetBotAliases>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name of the bot.



=head2 MaxResults => Int

The maximum number of aliases to return in the response. The default is
50. .



=head2 NameContains => Str

Substring to match in bot alias names. An alias will be returned if any
part of its name matches the substring. For example, "xyz" matches both
"xyzabc" and "abcxyz."



=head2 NextToken => Str

A pagination token for fetching the next page of aliases. If the
response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of aliases, specify the
pagination token in the next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBotAliases in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

