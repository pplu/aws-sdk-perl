
package Paws::LexModels::GetSlotTypes;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NameContains => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameContains');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSlotTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slottypes/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetSlotTypesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetSlotTypes - Arguments for method GetSlotTypes on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSlotTypes on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetSlotTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSlotTypes.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetSlotTypesResponse = $models . lex->GetSlotTypes(
      MaxResults   => 1,                   # OPTIONAL
      NameContains => 'MySlotTypeName',    # OPTIONAL
      NextToken    => 'MyNextToken',       # OPTIONAL
    );

    # Results:
    my $NextToken = $GetSlotTypesResponse->NextToken;
    my $SlotTypes = $GetSlotTypesResponse->SlotTypes;

    # Returns a L<Paws::LexModels::GetSlotTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetSlotTypes>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of slot types to return in the response. The default
is 10.



=head2 NameContains => Str

Substring to match in slot type names. A slot type will be returned if
any part of its name matches the substring. For example, "xyz" matches
both "xyzabc" and "abcxyz."



=head2 NextToken => Str

A pagination token that fetches the next page of slot types. If the
response to this API call is truncated, Amazon Lex returns a pagination
token in the response. To fetch next page of slot types, specify the
pagination token in the next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSlotTypes in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

