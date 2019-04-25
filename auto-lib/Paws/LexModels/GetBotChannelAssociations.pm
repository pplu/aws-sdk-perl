
package Paws::LexModels::GetBotChannelAssociations;
  use Moose;
  has BotAlias => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'aliasName', required => 1);
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBotChannelAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botName}/aliases/{aliasName}/channels/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBotChannelAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBotChannelAssociations - Arguments for method GetBotChannelAssociations on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBotChannelAssociations on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetBotChannelAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBotChannelAssociations.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetBotChannelAssociationsResponse =
      $models . lex->GetBotChannelAssociations(
      BotAlias     => 'MyAliasNameOrListAll',
      BotName      => 'MyBotName',
      MaxResults   => 1,                        # OPTIONAL
      NameContains => 'MyBotChannelName',       # OPTIONAL
      NextToken    => 'MyNextToken',            # OPTIONAL
      );

    # Results:
    my $BotChannelAssociations =
      $GetBotChannelAssociationsResponse->BotChannelAssociations;
    my $NextToken = $GetBotChannelAssociationsResponse->NextToken;

    # Returns a L<Paws::LexModels::GetBotChannelAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetBotChannelAssociations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotAlias => Str

An alias pointing to the specific version of the Amazon Lex bot to
which this association is being made.



=head2 B<REQUIRED> BotName => Str

The name of the Amazon Lex bot in the association.



=head2 MaxResults => Int

The maximum number of associations to return in the response. The
default is 50.



=head2 NameContains => Str

Substring to match in channel association names. An association will be
returned if any part of its name matches the substring. For example,
"xyz" matches both "xyzabc" and "abcxyz." To return all bot channel
associations, use a hyphen ("-") as the C<nameContains> parameter.



=head2 NextToken => Str

A pagination token for fetching the next page of associations. If the
response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of associations, specify
the pagination token in the next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBotChannelAssociations in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

