
package Paws::DMS::ModifyReplicationTask;
  use Moose;
  has CdcStartPosition => (is => 'ro', isa => 'Str');
  has CdcStartTime => (is => 'ro', isa => 'Str');
  has CdcStopPosition => (is => 'ro', isa => 'Str');
  has MigrationType => (is => 'ro', isa => 'Str');
  has ReplicationTaskArn => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationTaskIdentifier => (is => 'ro', isa => 'Str');
  has ReplicationTaskSettings => (is => 'ro', isa => 'Str');
  has TableMappings => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyReplicationTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::ModifyReplicationTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyReplicationTask - Arguments for method ModifyReplicationTask on L<Paws::DMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyReplicationTask on the
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method ModifyReplicationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyReplicationTask.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    my $ModifyReplicationTaskResponse = $dms->ModifyReplicationTask(
      ReplicationTaskArn        => 'MyString',
      CdcStartPosition          => 'MyString',               # OPTIONAL
      CdcStartTime              => '1970-01-01T01:00:00',    # OPTIONAL
      CdcStopPosition           => 'MyString',               # OPTIONAL
      MigrationType             => 'full-load',              # OPTIONAL
      ReplicationTaskIdentifier => 'MyString',               # OPTIONAL
      ReplicationTaskSettings   => 'MyString',               # OPTIONAL
      TableMappings             => 'MyString',               # OPTIONAL
    );

    # Results:
    my $ReplicationTask = $ModifyReplicationTaskResponse->ReplicationTask;

    # Returns a L<Paws::DMS::ModifyReplicationTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/ModifyReplicationTask>

=head1 ATTRIBUTES


=head2 CdcStartPosition => Str

Indicates when you want a change data capture (CDC) operation to start.
Use either CdcStartPosition or CdcStartTime to specify when you want a
CDC operation to start. Specifying both values results in an error.

The value can be in date, checkpoint, or LSN/SCN format.

Date Example: --cdc-start-position E<ldquo>2018-03-08T12:12:12E<rdquo>

Checkpoint Example: --cdc-start-position
"checkpoint:V1#27#mysql-bin-changelog.157832:1975:-1:2002:677883278264080:mysql-bin-changelog.157832:1876#0#0#*#0#93"

LSN Example: --cdc-start-position
E<ldquo>mysql-bin-changelog.000024:373E<rdquo>



=head2 CdcStartTime => Str

Indicates the start time for a change data capture (CDC) operation. Use
either CdcStartTime or CdcStartPosition to specify when you want a CDC
operation to start. Specifying both values results in an error.

Timestamp Example: --cdc-start-time E<ldquo>2018-03-08T12:12:12E<rdquo>



=head2 CdcStopPosition => Str

Indicates when you want a change data capture (CDC) operation to stop.
The value can be either server time or commit time.

Server time example: --cdc-stop-position
E<ldquo>server_time:3018-02-09T12:12:12E<rdquo>

Commit time example: --cdc-stop-position E<ldquo>commit_time:
3018-02-09T12:12:12 E<ldquo>



=head2 MigrationType => Str

The migration type.

Valid values: full-load | cdc | full-load-and-cdc

Valid values are: C<"full-load">, C<"cdc">, C<"full-load-and-cdc">

=head2 B<REQUIRED> ReplicationTaskArn => Str

The Amazon Resource Name (ARN) of the replication task.



=head2 ReplicationTaskIdentifier => Str

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

JSON file that contains settings for the task, such as target metadata
settings.



=head2 TableMappings => Str

When using the AWS CLI or boto3, provide the path of the JSON file that
contains the table mappings. Precede the path with "file://". When
working with the DMS API, provide the JSON as the parameter value.

For example, --table-mappings file://mappingfile.json




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyReplicationTask in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

