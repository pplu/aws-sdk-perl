package Paws::DMS::ReplicationInstanceTaskLog;
  use Moose;
  has ReplicationInstanceTaskLogSize => (is => 'ro', isa => 'Int');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str');
  has ReplicationTaskName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ReplicationInstanceTaskLog

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::ReplicationInstanceTaskLog object:

  $service_obj->Method(Att1 => { ReplicationInstanceTaskLogSize => $value, ..., ReplicationTaskName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::ReplicationInstanceTaskLog object:

  $result = $service_obj->Method(...);
  $result->Att1->ReplicationInstanceTaskLogSize

=head1 DESCRIPTION

Contains metadata for a replication instance task log.

=head1 ATTRIBUTES


=head2 ReplicationInstanceTaskLogSize => Int

  The size, in bytes, of the replication task log.


=head2 ReplicationTaskArn => Str

  The Amazon Resource Name (ARN) of the replication task.


=head2 ReplicationTaskName => Str

  The name of the replication task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

