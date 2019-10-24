# Generated from json/callresult_class.tt

package Paws::Budgets::DescribeBudgetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Budgets::Types qw/Budgets_Budget/;
  has Budget => (is => 'ro', isa => Budgets_Budget);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Budget' => {
                             'class' => 'Paws::Budgets::Budget',
                             'type' => 'Budgets_Budget'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetResponse

=head1 ATTRIBUTES


=head2 Budget => Budgets_Budget

The description of the budget.


=head2 _request_id => Str


=cut

1;