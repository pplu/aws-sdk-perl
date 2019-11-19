# Generated from json/callresult_class.tt

package Paws::Budgets::DescribeSubscribersForNotificationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Budgets::Types qw/Budgets_Subscriber/;
  has NextToken => (is => 'ro', isa => Str);
  has Subscribers => (is => 'ro', isa => ArrayRef[Budgets_Subscriber]);

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
               'Subscribers' => {
                                  'class' => 'Paws::Budgets::Subscriber',
                                  'type' => 'ArrayRef[Budgets_Subscriber]'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeSubscribersForNotificationResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token in the service response that indicates the next
set of results that you can retrieve.


=head2 Subscribers => ArrayRef[Budgets_Subscriber]

A list of subscribers that are associated with a notification.


=head2 _request_id => Str


=cut

1;