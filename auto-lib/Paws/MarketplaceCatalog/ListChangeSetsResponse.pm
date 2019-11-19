
package Paws::MarketplaceCatalog::ListChangeSetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MarketplaceCatalog::Types qw/MarketplaceCatalog_ChangeSetSummaryListItem/;
  has ChangeSetSummaryList => (is => 'ro', isa => ArrayRef[MarketplaceCatalog_ChangeSetSummaryListItem]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChangeSetSummaryList' => {
                                           'class' => 'Paws::MarketplaceCatalog::ChangeSetSummaryListItem',
                                           'type' => 'ArrayRef[MarketplaceCatalog_ChangeSetSummaryListItem]'
                                         },
               'NextToken' => {
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

Paws::MarketplaceCatalog::ListChangeSetsResponse

=head1 ATTRIBUTES


=head2 ChangeSetSummaryList => ArrayRef[MarketplaceCatalog_ChangeSetSummaryListItem]

Array of C<ChangeSetSummaryListItem> objects.


=head2 NextToken => Str

The value of the next token, if it exists. Null if there are no more
results.


=head2 _request_id => Str


=cut

