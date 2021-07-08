
package Paws::CustomerProfiles::ListProfileObjectTypes;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfileObjectTypes');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/domains/{DomainName}/object-types');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CustomerProfiles::ListProfileObjectTypesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::ListProfileObjectTypes - Arguments for method ListProfileObjectTypes on L<Paws::CustomerProfiles>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfileObjectTypes on the
L<Amazon Connect Customer Profiles|Paws::CustomerProfiles> service. Use the attributes of this class
as arguments to method ListProfileObjectTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfileObjectTypes.

=head1 SYNOPSIS

    my $profile = Paws->service('CustomerProfiles');
    my $ListProfileObjectTypesResponse = $profile->ListProfileObjectTypes(
      DomainName => 'Myname',
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'Mytoken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListProfileObjectTypesResponse->Items;
    my $NextToken = $ListProfileObjectTypesResponse->NextToken;

   # Returns a L<Paws::CustomerProfiles::ListProfileObjectTypesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/profile/ListProfileObjectTypes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The unique name of the domain.



=head2 MaxResults => Int

The maximum number of objects returned per page.



=head2 NextToken => Str

Identifies the next page of results to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfileObjectTypes in L<Paws::CustomerProfiles>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

