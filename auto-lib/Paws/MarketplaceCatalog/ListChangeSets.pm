
package Paws::MarketplaceCatalog::ListChangeSets;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MarketplaceCatalog::Types qw/MarketplaceCatalog_Sort MarketplaceCatalog_Filter/;
  has Catalog => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FilterList => (is => 'ro', isa => ArrayRef[MarketplaceCatalog_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Sort => (is => 'ro', isa => MarketplaceCatalog_Sort, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListChangeSets');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/ListChangeSets');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MarketplaceCatalog::ListChangeSetsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Sort' => {
                           'type' => 'MarketplaceCatalog_Sort',
                           'class' => 'Paws::MarketplaceCatalog::Sort'
                         },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'FilterList' => {
                                 'class' => 'Paws::MarketplaceCatalog::Filter',
                                 'type' => 'ArrayRef[MarketplaceCatalog_Filter]'
                               },
               'Catalog' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'Catalog' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceCatalog::ListChangeSets - Arguments for method ListChangeSets on L<Paws::MarketplaceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChangeSets on the
L<AWS Marketplace Catalog Service|Paws::MarketplaceCatalog> service. Use the attributes of this class
as arguments to method ListChangeSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChangeSets.

=head1 SYNOPSIS

    my $catalog.marketplace = Paws->service('MarketplaceCatalog');
    my $ListChangeSetsResponse = $catalog . marketplace->ListChangeSets(
      Catalog    => 'MyCatalog',
      FilterList => [
        {
          Name      => 'MyFilterName',              # min: 1, max: 255; OPTIONAL
          ValueList => [ 'MyStringValue', ... ],    # min: 1, max: 10; OPTIONAL
        },
        ...
      ],                                            # OPTIONAL
      MaxResults => 1,                              # OPTIONAL
      NextToken  => 'MyNextToken',                  # OPTIONAL
      Sort       => {
        SortBy    => 'MySortBy',     # min: 1, max: 255; OPTIONAL
        SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ChangeSetSummaryList = $ListChangeSetsResponse->ChangeSetSummaryList;
    my $NextToken            = $ListChangeSetsResponse->NextToken;

    # Returns a L<Paws::MarketplaceCatalog::ListChangeSetsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace/ListChangeSets>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

The catalog related to the request. Fixed value: C<AWSMarketplace>



=head2 FilterList => ArrayRef[MarketplaceCatalog_Filter]

An array of filter objects.



=head2 MaxResults => Int

The maximum number of results returned by a single call. This value
must be provided in the next call to retrieve the next set of results.
By default, this value is 20.



=head2 NextToken => Str

The token value retrieved from a previous call to access the next page
of results.



=head2 Sort => MarketplaceCatalog_Sort

An object that contains two attributes, C<sortBy> and C<sortOrder>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChangeSets in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

