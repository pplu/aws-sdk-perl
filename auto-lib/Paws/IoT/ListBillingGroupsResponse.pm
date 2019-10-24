
package Paws::IoT::ListBillingGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_GroupNameAndArn/;
  has BillingGroups => (is => 'ro', isa => ArrayRef[IoT_GroupNameAndArn]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'BillingGroups' => {
                                    'class' => 'Paws::IoT::GroupNameAndArn',
                                    'type' => 'ArrayRef[IoT_GroupNameAndArn]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'BillingGroups' => 'billingGroups'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListBillingGroupsResponse

=head1 ATTRIBUTES


=head2 BillingGroups => ArrayRef[IoT_GroupNameAndArn]

The list of billing groups.


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 _request_id => Str


=cut

