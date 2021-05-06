
package Paws::LexModels::GetSlotTypeVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSlotTypeVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slottypes/{name}/versions/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetSlotTypeVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetSlotTypeVersions - Arguments for method GetSlotTypeVersions on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSlotTypeVersions on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetSlotTypeVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSlotTypeVersions.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetSlotTypeVersionsResponse = $models . lex->GetSlotTypeVersions(
      Name       => 'MySlotTypeName',
      MaxResults => 1,                  # OPTIONAL
      NextToken  => 'MyNextToken',      # OPTIONAL
    );

    # Results:
    my $NextToken = $GetSlotTypeVersionsResponse->NextToken;
    my $SlotTypes = $GetSlotTypeVersionsResponse->SlotTypes;

    # Returns a L<Paws::LexModels::GetSlotTypeVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetSlotTypeVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of slot type versions to return in the response. The
default is 10.



=head2 B<REQUIRED> Name => Str

The name of the slot type for which versions should be returned.



=head2 NextToken => Str

A pagination token for fetching the next page of slot type versions. If
the response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of versions, specify the
pagination token in the next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSlotTypeVersions in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

