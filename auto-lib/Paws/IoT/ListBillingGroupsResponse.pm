
package Paws::IoT::ListBillingGroupsResponse;
  use Moose;
  has BillingGroups => (is => 'ro', isa => 'ArrayRef[Paws::IoT::GroupNameAndArn]', traits => ['NameInRequest'], request_name => 'billingGroups');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListBillingGroupsResponse

=head1 ATTRIBUTES


=head2 BillingGroups => ArrayRef[L<Paws::IoT::GroupNameAndArn>]

The list of billing groups.


=head2 NextToken => Str

The token used to get the next set of results, or B<null> if there are
no additional results.


=head2 _request_id => Str


=cut

