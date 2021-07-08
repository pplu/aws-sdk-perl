
package Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroups;
  use Moose;
  has Application => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAssociatedAttributeGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{application}/attribute-groups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroupsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroups - Arguments for method ListAssociatedAttributeGroups on L<Paws::ServiceCatalogAppRegistry>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAssociatedAttributeGroups on the
L<AWS Service Catalog App Registry|Paws::ServiceCatalogAppRegistry> service. Use the attributes of this class
as arguments to method ListAssociatedAttributeGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAssociatedAttributeGroups.

=head1 SYNOPSIS

    my $servicecatalog-appregistry = Paws->service('ServiceCatalogAppRegistry');
    my $ListAssociatedAttributeGroupsResponse =
      $servicecatalog -appregistry->ListAssociatedAttributeGroups(
      Application => 'MyApplicationSpecifier',
      MaxResults  => 1,                          # OPTIONAL
      NextToken   => 'MyNextToken',              # OPTIONAL
      );

    # Results:
    my $AttributeGroups =
      $ListAssociatedAttributeGroupsResponse->AttributeGroups;
    my $NextToken = $ListAssociatedAttributeGroupsResponse->NextToken;

# Returns a L<Paws::ServiceCatalogAppRegistry::ListAssociatedAttributeGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog-appregistry/ListAssociatedAttributeGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => Str

The name or ID of the application.



=head2 MaxResults => Int

The upper bound of the number of results to return (cannot exceed 25).
If this parameter is omitted, it defaults to 25. This value is
optional.



=head2 NextToken => Str

The token to use to get the next page of results after a previous API
call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAssociatedAttributeGroups in L<Paws::ServiceCatalogAppRegistry>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

