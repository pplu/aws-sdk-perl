
package Paws::IoT::DescribeBillingGroupResponse;
  use Moose;
  has BillingGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billingGroupArn');
  has BillingGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billingGroupId');
  has BillingGroupMetadata => (is => 'ro', isa => 'Paws::IoT::BillingGroupMetadata', traits => ['NameInRequest'], request_name => 'billingGroupMetadata');
  has BillingGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'billingGroupName');
  has BillingGroupProperties => (is => 'ro', isa => 'Paws::IoT::BillingGroupProperties', traits => ['NameInRequest'], request_name => 'billingGroupProperties');
  has Version => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'version');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeBillingGroupResponse

=head1 ATTRIBUTES


=head2 BillingGroupArn => Str

The ARN of the billing group.


=head2 BillingGroupId => Str

The ID of the billing group.


=head2 BillingGroupMetadata => L<Paws::IoT::BillingGroupMetadata>

Additional information about the billing group.


=head2 BillingGroupName => Str

The name of the billing group.


=head2 BillingGroupProperties => L<Paws::IoT::BillingGroupProperties>

The properties of the billing group.


=head2 Version => Int

The version of the billing group.


=head2 _request_id => Str


=cut

