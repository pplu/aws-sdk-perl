
package Paws::MarketplaceCatalog::ListEntities;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::MarketplaceCatalog::Types qw/MarketplaceCatalog_Filter MarketplaceCatalog_Sort/;
  has Catalog => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has EntityType => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FilterList => (is => 'ro', isa => ArrayRef[MarketplaceCatalog_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has Sort => (is => 'ro', isa => MarketplaceCatalog_Sort, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListEntities');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/ListEntities');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::MarketplaceCatalog::ListEntitiesResponse');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Catalog' => 1,
                    'EntityType' => 1
                  },
  'types' => {
               'Sort' => {
                           'type' => 'MarketplaceCatalog_Sort',
                           'class' => 'Paws::MarketplaceCatalog::Sort'
                         },
               'FilterList' => {
                                 'type' => 'ArrayRef[MarketplaceCatalog_Filter]',
                                 'class' => 'Paws::MarketplaceCatalog::Filter'
                               },
               'Catalog' => {
                              'type' => 'Str'
                            },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'EntityType' => {
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

Paws::MarketplaceCatalog::ListEntities - Arguments for method ListEntities on L<Paws::MarketplaceCatalog>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListEntities on the
L<AWS Marketplace Catalog Service|Paws::MarketplaceCatalog> service. Use the attributes of this class
as arguments to method ListEntities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListEntities.

=head1 SYNOPSIS

    my $catalog.marketplace = Paws->service('MarketplaceCatalog');
    my $ListEntitiesResponse = $catalog . marketplace->ListEntities(
      Catalog    => 'MyCatalog',
      EntityType => 'MyEntityType',
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
    my $EntitySummaryList = $ListEntitiesResponse->EntitySummaryList;
    my $NextToken         = $ListEntitiesResponse->NextToken;

    # Returns a L<Paws::MarketplaceCatalog::ListEntitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/catalog.marketplace/ListEntities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Catalog => Str

The catalog related to the request. Fixed value: C<AWSMarketplace>



=head2 B<REQUIRED> EntityType => Str

The type of entities to retrieve.



=head2 FilterList => ArrayRef[MarketplaceCatalog_Filter]

An array of filter objects. Each filter object contains two attributes,
C<filterName> and C<filterValues>.



=head2 MaxResults => Int

Specifies the upper limit of the elements on a single page. If a value
isn't provided, the default value is 20.



=head2 NextToken => Str

The value of the next token, if it exists. Null if there are no more
results.



=head2 Sort => MarketplaceCatalog_Sort

An object that contains two attributes, C<sortBy> and C<sortOrder>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListEntities in L<Paws::MarketplaceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

