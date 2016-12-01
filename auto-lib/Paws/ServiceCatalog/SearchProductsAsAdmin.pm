
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

Paws::ServiceCatalog::SearchProductsAsAdmin - Arguments for method SearchProductsAsAdmin on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchProductsAsAdmin on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method SearchProductsAsAdmin.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchProductsAsAdmin.

As an example:

  $service_obj->SearchProductsAsAdmin(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code to use for this operation. Supported language codes
are as follows:

"en" (English)

"jp" (Japanese)

"zh" (Chinese)

If no code is specified, "en" is used as the default.



=head2 Filters => L<Paws::ServiceCatalog::ProductViewFilters>

The list of filters with which to limit search results. If no search
filters are specified, the output is all the products to which the
administrator has access.



=head2 PageSize => Int

The maximum number of items to return in the results. If more results
exist than fit in the specified C<PageSize>, the value of
C<NextPageToken> in the response is non-null.



=head2 PageToken => Str

The page token of the first page retrieved. If null, this retrieves the
first page of size C<PageSize>.



=head2 PortfolioId => Str

The portfolio identifier.



=head2 ProductSource => Str

Access level of the source of the product.

Valid values are: C<"ACCOUNT">

=head2 SortBy => Str

The sort field specifier. If no value is specified, results are not
sorted.

Valid values are: C<"Title">, C<"VersionCount">, C<"CreationDate">

=head2 SortOrder => Str

The sort order specifier. If no value is specified, results are not
sorted.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchProductsAsAdmin in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

