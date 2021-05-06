
package Paws::LexModels::GetIntentVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetIntentVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/intents/{name}/versions/');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetIntentVersionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetIntentVersions - Arguments for method GetIntentVersions on L<Paws::LexModels>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetIntentVersions on the
L<Amazon Lex Model Building Service|Paws::LexModels> service. Use the attributes of this class
as arguments to method GetIntentVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetIntentVersions.

=head1 SYNOPSIS

    my $models.lex = Paws->service('LexModels');
    my $GetIntentVersionsResponse = $models . lex->GetIntentVersions(
      Name       => 'MyIntentName',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $Intents   = $GetIntentVersionsResponse->Intents;
    my $NextToken = $GetIntentVersionsResponse->NextToken;

    # Returns a L<Paws::LexModels::GetIntentVersionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/models.lex/GetIntentVersions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of intent versions to return in the response. The
default is 10.



=head2 B<REQUIRED> Name => Str

The name of the intent for which versions should be returned.



=head2 NextToken => Str

A pagination token for fetching the next page of intent versions. If
the response to this call is truncated, Amazon Lex returns a pagination
token in the response. To fetch the next page of versions, specify the
pagination token in the next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetIntentVersions in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

