
package Paws::EC2::PurchaseScheduledInstancesResult;
  use Moose;
  has ScheduledInstanceSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ScheduledInstance]', request_name => 'scheduledInstanceSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseScheduledInstancesResult

=head1 ATTRIBUTES


=head2 ScheduledInstanceSet => ArrayRef[L<Paws::EC2::ScheduledInstance>]

Information about the Scheduled Instances.


=head2 _request_id => Str


=cut

