
package Paws::ServiceCatalog::SearchProductsAsAdmin;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Filters => (is => 'ro', isa => 'Paws::ServiceCatalog::ProductViewFilters');
  has PageSize => (is => 'ro', isa => 'Int');
  has PageToken => (is => 'ro', isa => 'Str');
  has PortfolioId => (is => 'ro', isa => 'Str');
  has ProductSource => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'Str');
  has SortOrder => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchProductsAsAdmin');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::SearchProductsAsAdminOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::SearchProductsAsAdmin - Arguments for method SearchProductsAsAdmin on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchProductsAsAdmin on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method SearchProductsAsAdmin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchProductsAsAdmin.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $SearchProductsAsAdminOutput = $servicecatalog->SearchProductsAsAdmin(
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      Filters        => {
        'FullTextSearch' => [ 'MyProductViewFilterValue', ... ]
        ,    # key: values: FullTextSearch, Owner, ProductType, SourceProductId
      },    # OPTIONAL
      PageSize      => 1,                # OPTIONAL
      PageToken     => 'MyPageToken',    # OPTIONAL
      PortfolioId   => 'MyId',           # OPTIONAL
      ProductSource => 'ACCOUNT',        # OPTIONAL
      SortBy        => 'Title',          # OPTIONAL
      SortOrder     => 'ASCENDING',      # OPTIONAL
    );

    # Results:
    my $NextPageToken      = $SearchProductsAsAdminOutput->NextPageToken;
    my $ProductViewDetails = $SearchProductsAsAdminOutput->ProductViewDetails;

    # Returns a L<Paws::ServiceCatalog::SearchProductsAsAdminOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/SearchProductsAsAdmin>

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




=head2 Filters => L<Paws::ServiceCatalog::ProductViewFilters>

The search filters. If no search filters are specified, the output
includes all products to which the administrator has access.



=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 PortfolioId => Str

The portfolio identifier.



=head2 ProductSource => Str

Access level of the source of the product.

Valid values are: C<"ACCOUNT">

=head2 SortBy => Str

The sort field. If no value is specified, the results are not sorted.

Valid values are: C<"Title">, C<"VersionCount">, C<"CreationDate">

=head2 SortOrder => Str

The sort order. If no value is specified, the results are not sorted.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchProductsAsAdmin in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

