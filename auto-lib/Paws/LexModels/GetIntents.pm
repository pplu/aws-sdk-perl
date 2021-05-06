
package Paws::LexModels::GetIntents;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIntents');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/intents/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetIntentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetIntents - Arguments for method GetIntents on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIntents on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetIntents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIntents.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetIntentsResponse = $models . lex->GetIntents(
      MaxResults   => 1,                 # OPTIONAL
      NameContains => 'MyIntentName',    # OPTIONAL
      NextToken    => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $Intents   = $GetIntentsResponse->Intents;
    my $NextToken = $GetIntentsResponse->NextToken;

    # Returns a L<Paws::LexModels::GetIntentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetIntents>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of intents to return in the response. The default is
10.



=head2 NameContains => Str

Substring to match in intent names. An intent will be returned if any
part of its name matches the substring. For example, "xyz" matches both
"xyzabc" and "abcxyz."



=head2 NextToken => Str

A pagination token that fetches the next page of intents. If the
response to this API call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of intents, specify the
pagination token in the next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIntents in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

