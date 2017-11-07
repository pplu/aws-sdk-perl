
package Paws::DMS::StartReplicationTask;
  use Moose;
  has CdcStartTime => (is => 'ro', isa => 'Str');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str', required => 1);
  has StartReplicationTaskType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartReplicationTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::StartReplicationTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::StartReplicationTask - Arguments for method StartReplicationTask on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartReplicationTask on the 
AWS Database Migration Service service. Use the attributes of this class
as arguments to method StartReplicationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartReplicationTask.

As an example:

  $service_obj->StartReplicationTask(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CdcStartTime => Str

The start time for the Change Data Capture (CDC) operation.



=head2 B<REQUIRED> ReplicationTaskArn => Str

The Amazon Resource Number (ARN) of the replication task to be started.



=head2 B<REQUIRED> StartReplicationTaskType => Str

The type of replication task.

Valid values are: C<"start-replication">, C<"resume-processing">, C<"reload-target">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartReplicationTask in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

