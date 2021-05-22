
package Paws::DMS::CreateReplicationTask;
  use Moose;
  has CdcStartPosition => (is => 'ro', isa => 'Str');
  has CdcStartTime => (is => 'ro', isa => 'Str');
  has CdcStopPosition => (is => 'ro', isa => 'Str');
  has MigrationType => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationTaskIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationTaskSettings => (is => 'ro', isa => 'Str');
  has ResourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceEndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has TableMappings => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');
  has TargetEndpointArn => (is => 'ro', isa => 'Str', required => 1);
  has TaskData => (is => 'ro', isa => 'Str');

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
L<AWS Database Migration Service|Paws::DMS> service. Use the attributes of this class
as arguments to method CreateReplicationTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationTask.

=head1 SYNOPSIS

    my $dms = Paws->service('DMS');
    # Create replication task
    # Creates a replication task using the specified parameters.
    my $CreateReplicationTaskResponse = $dms->CreateReplicationTask(
      'CdcStartTime'  => '2016-12-14T18:25:43Z',
      'MigrationType' => 'full-load',
      'ReplicationInstanceArn' =>
        'arn:aws:dms:us-east-1:123456789012:rep:6UTDJGBOUS3VI3SUWA66XFJCJQ',
      'ReplicationTaskIdentifier' => 'task1',
      'ReplicationTaskSettings'   => '',
      'SourceEndpointArn' =>
'arn:aws:dms:us-east-1:123456789012:endpoint:ZW5UAN6P4E77EC7YWHK4RZZ3BE',
      'TableMappings' => 'file://mappingfile.json',
      'Tags'          => [

        {
          'Key'   => 'Acount',
          'Value' => 24352226
        }
      ],
      'TargetEndpointArn' =>
        'arn:aws:dms:us-east-1:123456789012:endpoint:ASXWXJZLNWNT5HTWCGV2BUJQ7E'
    );

    # Results:
    my $ReplicationTask = $CreateReplicationTaskResponse->ReplicationTask;

    # Returns a L<Paws::DMS::CreateReplicationTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dms/CreateReplicationTask>

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

When you use this task setting with a source PostgreSQL database, a
logical replication slot should already be created and associated with
the source endpoint. You can verify this by setting the C<slotName>
extra connection attribute to the name of this logical replication
slot. For more information, see Extra Connection Attributes When Using
PostgreSQL as a Source for AWS DMS
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Source.PostgreSQL.html#CHAP_Source.PostgreSQL.ConnectionAttrib).



=head2 CdcStartTime => Str

Indicates the start time for a change data capture (CDC) operation. Use
either CdcStartTime or CdcStartPosition to specify when you want a CDC
operation to start. Specifying both values results in an error.

Timestamp Example: --cdc-start-time E<ldquo>2018-03-08T12:12:12E<rdquo>



=head2 CdcStopPosition => Str

Indicates when you want a change data capture (CDC) operation to stop.
The value can be either server time or commit time.

Server time example: --cdc-stop-position
E<ldquo>server_time:2018-02-09T12:12:12E<rdquo>

Commit time example: --cdc-stop-position E<ldquo>commit_time:
2018-02-09T12:12:12 E<ldquo>



=head2 B<REQUIRED> MigrationType => Str

The migration type. Valid values: C<full-load> | C<cdc> |
C<full-load-and-cdc>

Valid values are: C<"full-load">, C<"cdc">, C<"full-load-and-cdc">

=head2 B<REQUIRED> ReplicationInstanceArn => Str

The Amazon Resource Name (ARN) of a replication instance.



=head2 B<REQUIRED> ReplicationTaskIdentifier => Str

An identifier for the replication task.

Constraints:

=over

=item *

Must contain 1-255 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 ReplicationTaskSettings => Str

Overall settings for the task, in JSON format. For more information,
see Specifying Task Settings for AWS Database Migration Service Tasks
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TaskSettings.html)
in the I<AWS Database Migration User Guide.>



=head2 ResourceIdentifier => Str

A friendly name for the resource identifier at the end of the
C<EndpointArn> response parameter that is returned in the created
C<Endpoint> object. The value for this parameter can have up to 31
characters. It can contain only ASCII letters, digits, and hyphen
('-'). Also, it can't end with a hyphen or contain two consecutive
hyphens, and can only begin with a letter, such as C<Example-App-ARN1>.
For example, this value might result in the C<EndpointArn> value
C<arn:aws:dms:eu-west-1:012345678901:rep:Example-App-ARN1>. If you
don't specify a C<ResourceIdentifier> value, AWS DMS generates a
default identifier value for the end of C<EndpointArn>.



=head2 B<REQUIRED> SourceEndpointArn => Str

An Amazon Resource Name (ARN) that uniquely identifies the source
endpoint.



=head2 B<REQUIRED> TableMappings => Str

The table mappings for the task, in JSON format. For more information,
see Using Table Mapping to Specify Task Settings
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.CustomizingTasks.TableMapping.html)
in the I<AWS Database Migration Service User Guide.>



=head2 Tags => ArrayRef[L<Paws::DMS::Tag>]

One or more tags to be assigned to the replication task.



=head2 B<REQUIRED> TargetEndpointArn => Str

An Amazon Resource Name (ARN) that uniquely identifies the target
endpoint.



=head2 TaskData => Str

Supplemental information that the task requires to migrate the data for
certain source and target endpoints. For more information, see
Specifying Supplemental Data for Task Settings
(https://docs.aws.amazon.com/dms/latest/userguide/CHAP_Tasks.TaskData.html)
in the I<AWS Database Migration Service User Guide.>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationTask in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

