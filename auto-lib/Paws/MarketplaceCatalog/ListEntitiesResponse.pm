
package Paws::MarketplaceCatalog::ListEntitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MarketplaceCatalog::Types qw/MarketplaceCatalog_EntitySummary/;
  has EntitySummaryList => (is => 'ro', isa => ArrayRef[MarketplaceCatalog_EntitySummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EntitySummaryList' => {
                                        'class' => 'Paws::MarketplaceCatalog::EntitySummary',
                                        'type' => 'ArrayRef[MarketplaceCatalog_EntitySummary]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
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

Paws::MarketplaceCatalog::ListEntitiesResponse

=head1 ATTRIBUTES


=head2 EntitySummaryList => ArrayRef[MarketplaceCatalog_EntitySummary]

Array of C<EntitySummary> object.


=head2 NextToken => Str

The value of the next token if it exists. Null if there is no more
result.


=head2 _request_id => Str


=cut

