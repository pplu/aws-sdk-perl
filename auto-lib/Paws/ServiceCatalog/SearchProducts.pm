# Generated from json/callargs_class.tt

package Paws::ServiceCatalog::SearchProducts;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProductViewFilters/;
  has AcceptLanguage => (is => 'ro', isa => Str, predicate => 1);
  has Filters => (is => 'ro', isa => ServiceCatalog_ProductViewFilters, predicate => 1);
  has PageSize => (is => 'ro', isa => Int, predicate => 1);
  has PageToken => (is => 'ro', isa => Str, predicate => 1);
  has SortBy => (is => 'ro', isa => Str, predicate => 1);
  has SortOrder => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SearchProducts');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ServiceCatalog::SearchProductsOutput');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PageSize' => {
                               'type' => 'Int'
                             },
               'AcceptLanguage' => {
                                     'type' => 'Str'
                                   },
               'Filters' => {
                              'class' => 'Paws::ServiceCatalog::ProductViewFilters',
                              'type' => 'ServiceCatalog_ProductViewFilters'
                            },
               'SortOrder' => {
                                'type' => 'Str'
                              },
               'PageToken' => {
                                'type' => 'Str'
                              },
               'SortBy' => {
                             'type' => 'Str'
                           }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::SearchProducts - Arguments for method SearchProducts on L<Paws::ServiceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchProducts on the
L<AWS Service Catalog|Paws::ServiceCatalog> service. Use the attributes of this class
as arguments to method SearchProducts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchProducts.

=head1 SYNOPSIS

    my $servicecatalog = Paws->service('ServiceCatalog');
    my $SearchProductsOutput = $servicecatalog->SearchProducts(
      AcceptLanguage => 'MyAcceptLanguage',    # OPTIONAL
      Filters        => {
        'FullTextSearch' => [ 'MyProductViewFilterValue', ... ]
        ,    # key: values: FullTextSearch, Owner, ProductType, SourceProductId
      },    # OPTIONAL
      PageSize  => 1,                # OPTIONAL
      PageToken => 'MyPageToken',    # OPTIONAL
      SortBy    => 'Title',          # OPTIONAL
      SortOrder => 'ASCENDING',      # OPTIONAL
    );

    # Results:
    my $NextPageToken = $SearchProductsOutput->NextPageToken;
    my $ProductViewAggregations =
      $SearchProductsOutput->ProductViewAggregations;
    my $ProductViewSummaries = $SearchProductsOutput->ProductViewSummaries;

    # Returns a L<Paws::ServiceCatalog::SearchProductsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicecatalog/SearchProducts>

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




=head2 Filters => ServiceCatalog_ProductViewFilters

The search filters. If no search filters are specified, the output
includes all products to which the caller has access.



=head2 PageSize => Int

The maximum number of items to return with this call.



=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.



=head2 SortBy => Str

The sort field. If no value is specified, the results are not sorted.

Valid values are: C<"Title">, C<"VersionCount">, C<"CreationDate">

=head2 SortOrder => Str

The sort order. If no value is specified, the results are not sorted.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchProducts in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

