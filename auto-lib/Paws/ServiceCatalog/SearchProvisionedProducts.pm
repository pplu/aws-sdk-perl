
package Paws::ServiceCatalog::SearchProvisionedProducts;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has AccessLevelFilter => (is => 'ro', isa => 'Paws::ServiceCatalog::AccessLevelFilter');
  has Filters => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisionedProductFilters');
  has PageSize => (is => 'ro', isa => 'Int');
  has PageToken => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchProvisionedProducts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::SearchProvisionedProductsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::SearchProvisionedProducts - Arguments for method SearchProvisionedProducts on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchProvisionedProducts on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method SearchProvisionedProducts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchProvisionedProducts.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $SearchProvisionedProductsOutput =
      $servicecatalog->SearchProvisionedProducts(
      AcceptLanguage    => 'MyAcceptLanguage',    # OPTIONAL
      AccessLevelFilter => {
        Key => 'Account',    # values: Account, Role, User; OPTIONAL
        Value => 'MyAccessLevelFilterValue',    # OPTIONAL
      },    # OPTIONAL
      Filters => {
        'SearchQuery' => [ 'MyProvisionedProductViewFilterValue', ... ]
        ,    # key: values: SearchQuery
      },    # OPTIONAL
      PageSize  => 1,                # OPTIONAL
      PageToken => 'MyPageToken',    # OPTIONAL
      SortBy    => 'MySortField',    # OPTIONAL
      SortOrder => 'ASCENDING',      # OPTIONAL
      );

    # Results:
    my $NextPageToken = $SearchProvisionedProductsOutput->NextPageToken;
    my $ProvisionedProducts =
      $SearchProvisionedProductsOutput->ProvisionedProducts;
    my $TotalResultsCount = $SearchProvisionedProductsOutput->TotalResultsCount;

    # Returns a L<Paws::ServiceCatalog::SearchProvisionedProductsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/SearchProvisionedProducts>

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 AccessLevelFilter => L<Paws::ServiceCatalog::AccessLevelFilter>

The access level to use to obtain results. The default is C<User>.



=head2 Filters => L<Paws::ServiceCatalog::ProvisionedProductFilters>

The search filters.

When the key is C<SearchQuery>, the searchable fields are C<arn>,
C<createdTime>, C<id>, C<lastRecordId>, C<idempotencyToken>, C<name>,
C<physicalId>, C<productId>, C<provisioningArtifact>, C<type>,
C<status>, C<tags>, C<userArn>, and C<userArnSession>.

Example: C<"SearchQuery":["status:AVAILABLE"]>



=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 SortBy => Str

The sort field. If no value is specified, the results are not sorted.
The valid values are C<arn>, C<id>, C<name>, and C<lastRecordId>.



=head2 SortOrder => Str

The sort order. If no value is specified, the results are not sorted.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchProvisionedProducts in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

