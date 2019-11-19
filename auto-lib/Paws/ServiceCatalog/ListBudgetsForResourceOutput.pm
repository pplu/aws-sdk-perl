# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListBudgetsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_BudgetDetail/;
  has Budgets => (is => 'ro', isa => ArrayRef[ServiceCatalog_BudgetDetail]);
  has NextPageToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Budgets' => {
                              'type' => 'ArrayRef[ServiceCatalog_BudgetDetail]',
                              'class' => 'Paws::ServiceCatalog::BudgetDetail'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListBudgetsForResourceOutput

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[ServiceCatalog_BudgetDetail]

Information about the associated budgets.


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 _request_id => Str


=cut

1;