
package Paws::LexModels::GetBots;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBots');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBotsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBots - Arguments for method GetBots on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBots on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetBots.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBots.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetBotsResponse = $models . lex->GetBots(
      MaxResults   => 1,                # OPTIONAL
      NameContains => 'MyBotName',      # OPTIONAL
      NextToken    => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Bots      = $GetBotsResponse->Bots;
    my $NextToken = $GetBotsResponse->NextToken;

    # Returns a L<Paws::LexModels::GetBotsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetBots>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of bots to return in the response that the request
will return. The default is 10.



=head2 NameContains => Str

Substring to match in bot names. A bot will be returned if any part of
its name matches the substring. For example, "xyz" matches both
"xyzabc" and "abcxyz."



=head2 NextToken => Str

A pagination token that fetches the next page of bots. If the response
to this call is truncated, Amazon Lex returns a pagination token in the
response. To fetch the next page of bots, specify the pagination token
in the next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBots in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

