package Paws::DMS::ReplicationTask;
  use Moose;
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has MigrationType => (is => 'ro', isa => 'Str');
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str');
  has ReplicationTaskCreationDate => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has ReplicationTaskIdentifier => (is => 'ro', isa => 'Str');
  has ReplicationTaskSettings => (is => 'ro', isa => 'Str');
  has ReplicationTaskStartDate => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has ReplicationTaskStats => (is => 'ro', isa => 'Paws::DMS::ReplicationTaskStats');
  has SourceEndpointArn => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TableMappings => (is => 'ro', isa => 'Str');
  has TargetEndpointArn => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationTask object:

  $service_obj->Method(Att1 => { LastFailureMessage => $value, ..., TargetEndpointArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationTask object:

  $result = $service_obj->Method(...);
  $result->Att1->LastFailureMessage

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LastFailureMessage => Str

  The last error (failure) message generated for the replication
instance.


=head2 MigrationType => Str

  The type of migration.


=head2 ReplicationInstanceArn => Str

  The Amazon Resource Name (ARN) of the replication instance.


=head2 ReplicationTaskArn => Str

  The Amazon Resource Name (ARN) of the replication task.


=head2 ReplicationTaskCreationDate => L<Paws::API::TimeStamp>

  The date the replication task was created.


=head2 ReplicationTaskIdentifier => Str

  The replication task identifier.

Constraints:

=over

=item * Must contain from 1 to 63 alphanumeric characters or hyphens.

=item * First character must be a letter.

=item * Cannot end with a hyphen or contain two consecutive hyphens.

=back



=head2 ReplicationTaskSettings => Str

  The settings for the replication task.


=head2 ReplicationTaskStartDate => L<Paws::API::TimeStamp>

  The date the replication task is scheduled to start.


=head2 ReplicationTaskStats => L<Paws::DMS::ReplicationTaskStats>

  The statistics for the task, including elapsed time, tables loaded, and
table errors.


=head2 SourceEndpointArn => Str

  The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.


=head2 Status => Str

  The status of the replication task.


=head2 TableMappings => Str

  Table mappings specified in the task.


=head2 TargetEndpointArn => Str

  The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

