
package Paws::DMS::CreateReplicationTask;
  use Moose;
  has CdcStartTime => (is => 'ro', isa => 'Str');
  has MigrationType => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationTaskIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationTaskSettings => (is => 'ro', isa => 'Str');
  has SourceEndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has TableMappings => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');
  has TargetEndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::CreateReplicationTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateReplicationTask - Arguments for method CreateReplicationTask on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationTask on the 
AWS Database Migration Service service. Use the attributes of this class
as arguments to method CreateReplicationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationTask.

As an example:

  $service_obj->CreateReplicationTask(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CdcStartTime => Str

The start time for the Change Data Capture (CDC) operation.



=head2 B<REQUIRED> MigrationType => Str

The migration type.

Valid values are: C<"full-load">, C<"cdc">, C<"full-load-and-cdc">

=head2 B<REQUIRED> ReplicationInstanceArn => Str

The Amazon Resource Name (ARN) of the replication instance.



=head2 B<REQUIRED> ReplicationTaskIdentifier => Str

The replication task identifier.

Constraints:

=over

=item *

Must contain from 1 to 255 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 ReplicationTaskSettings => Str

Settings for the task, such as target metadata settings. For a complete
list of task settings, see Task Settings for AWS Database Migration
Service Tasks.



=head2 B<REQUIRED> SourceEndpointArn => Str

The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.



=head2 B<REQUIRED> TableMappings => Str

When using the AWS CLI or boto3, provide the path of the JSON file that
contains the table mappings. Precede the path with "file://". When
working with the DMS API, provide the JSON as the parameter value.

For example, --table-mappings file://mappingfile.json



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

Tags to be added to the replication instance.



=head2 B<REQUIRED> TargetEndpointArn => Str

The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationTask in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

