# Generated from json/callresult_class.tt

package Paws::Budgets::DescribeNotificationsForBudgetResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Budgets::Types qw/Budgets_Notification/;
  has NextToken => (is => 'ro', isa => Str);
  has Notifications => (is => 'ro', isa => ArrayRef[Budgets_Notification]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Notifications' => {
                                    'type' => 'ArrayRef[Budgets_Notification]',
                                    'class' => 'Paws::Budgets::Notification'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeNotificationsForBudgetResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token in the service response that indicates the next
set of results that you can retrieve.


=head2 Notifications => ArrayRef[Budgets_Notification]

A list of notifications that are associated with a budget.


=head2 _request_id => Str


=cut

1;