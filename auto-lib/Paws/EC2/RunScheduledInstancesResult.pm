
package Paws::EC2::RunScheduledInstancesResult;
  use Moose;
  has InstanceIdSet => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'instanceIdSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RunScheduledInstancesResult

=head1 ATTRIBUTES


=head2 InstanceIdSet => ArrayRef[Str|Undef]

The IDs of the newly launched instances.


=head2 _request_id => Str


=cut

