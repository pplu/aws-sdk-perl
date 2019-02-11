
package Paws::IoT::CreateBillingGroupResponse;
  use Moose;
  has BillingGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billingGroupArn');
  has BillingGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billingGroupId');
  has BillingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billingGroupName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateBillingGroupResponse

=head1 ATTRIBUTES


=head2 BillingGroupArn => Str

The ARN of the billing group.


=head2 BillingGroupId => Str

The ID of the billing group.


=head2 BillingGroupName => Str

The name you gave to the billing group.


=head2 _request_id => Str


=cut

