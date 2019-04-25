
package Paws::CognitoSync::ListDatasets;
  use Moose;
  has IdentityId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityId', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IdentityPoolId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatasets');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoSync::ListDatasetsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::ListDatasets - Arguments for method ListDatasets on L<Paws::CognitoSync>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatasets on the
L<Amazon Cognito Sync|Paws::CognitoSync> service. Use the attributes of this class
as arguments to method ListDatasets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatasets.

=head1 SYNOPSIS

    my $cognito-sync = Paws->service('CognitoSync');
    my $ListDatasetsResponse = $cognito -sync->ListDatasets(
      IdentityId     => 'MyIdentityId',
      IdentityPoolId => 'MyIdentityPoolId',
      MaxResults     => 1,                    # OPTIONAL
      NextToken      => 'MyString',           # OPTIONAL
    );

    # Results:
    my $Count     = $ListDatasetsResponse->Count;
    my $Datasets  = $ListDatasetsResponse->Datasets;
    my $NextToken = $ListDatasetsResponse->NextToken;

    # Returns a L<Paws::CognitoSync::ListDatasetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-sync/ListDatasets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.



=head2 B<REQUIRED> IdentityPoolId => Str

A name-spaced GUID (for example,
us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
Cognito. GUID generation is unique within a region.



=head2 MaxResults => Int

The maximum number of results to be returned.



=head2 NextToken => Str

A pagination token for obtaining the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatasets in L<Paws::CognitoSync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

