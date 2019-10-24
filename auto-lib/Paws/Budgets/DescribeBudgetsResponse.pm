# Generated from json/callresult_class.tt

package Paws::Budgets::DescribeBudgetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Budgets::Types qw/Budgets_Budget/;
  has Budgets => (is => 'ro', isa => ArrayRef[Budgets_Budget]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Budgets' => {
                              'class' => 'Paws::Budgets::Budget',
                              'type' => 'ArrayRef[Budgets_Budget]'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeBudgetsResponse

=head1 ATTRIBUTES


=head2 Budgets => ArrayRef[Budgets_Budget]

A list of budgets.


=head2 NextToken => Str

The pagination token in the service response that indicates the next
set of results that you can retrieve.


=head2 _request_id => Str


=cut

1;