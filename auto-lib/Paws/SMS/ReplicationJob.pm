package Paws::SMS::ReplicationJob;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Encrypted => (is => 'ro', isa => 'Bool', request_name => 'encrypted', traits => ['NameInRequest']);
  has Frequency => (is => 'ro', isa => 'Int', request_name => 'frequency', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str', request_name => 'kmsKeyId', traits => ['NameInRequest']);
  has LatestAmiId => (is => 'ro', isa => 'Str', request_name => 'latestAmiId', traits => ['NameInRequest']);
  has LicenseType => (is => 'ro', isa => 'Str', request_name => 'licenseType', traits => ['NameInRequest']);
  has NextReplicationRunStartTime => (is => 'ro', isa => 'Str', request_name => 'nextReplicationRunStartTime', traits => ['NameInRequest']);
  has NumberOfRecentAmisToKeep => (is => 'ro', isa => 'Int', request_name => 'numberOfRecentAmisToKeep', traits => ['NameInRequest']);
  has ReplicationJobId => (is => 'ro', isa => 'Str', request_name => 'replicationJobId', traits => ['NameInRequest']);
  has ReplicationRunList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ReplicationRun]', request_name => 'replicationRunList', traits => ['NameInRequest']);
  has RoleName => (is => 'ro', isa => 'Str', request_name => 'roleName', traits => ['NameInRequest']);
  has RunOnce => (is => 'ro', isa => 'Bool', request_name => 'runOnce', traits => ['NameInRequest']);
  has SeedReplicationTime => (is => 'ro', isa => 'Str', request_name => 'seedReplicationTime', traits => ['NameInRequest']);
  has ServerId => (is => 'ro', isa => 'Str', request_name => 'serverId', traits => ['NameInRequest']);
  has ServerType => (is => 'ro', isa => 'Str', request_name => 'serverType', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has VmServer => (is => 'ro', isa => 'Paws::SMS::VmServer', request_name => 'vmServer', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::ReplicationJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::ReplicationJob object:

  $service_obj->Method(Att1 => { Description => $value, ..., VmServer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::ReplicationJob object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Represents a replication job.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the replication job.


=head2 Encrypted => Bool

  Whether the replication job should produce encrypted AMIs or not. See
also C<KmsKeyId> below.


=head2 Frequency => Int

  The time between consecutive replication runs, in hours.


=head2 KmsKeyId => Str

  KMS key ID for replication jobs that produce encrypted AMIs. Can be any
of the following:

=over

=item *

KMS key ID

=item *

KMS key alias

=item *

ARN referring to KMS key ID

=item *

ARN referring to KMS key alias

=back

If encrypted is I<true> but a KMS key id is not specified, the
customer's default KMS key for EBS is used.


=head2 LatestAmiId => Str

  The ID of the latest Amazon Machine Image (AMI).


=head2 LicenseType => Str

  The license type to be used for the AMI created by a successful
replication run.


=head2 NextReplicationRunStartTime => Str

  The start time of the next replication run.


=head2 NumberOfRecentAmisToKeep => Int

  Number of recent AMIs to keep in the customer's account for a
replication job. By default the value is set to zero, meaning that all
AMIs are kept.


=head2 ReplicationJobId => Str

  The identifier of the replication job.


=head2 ReplicationRunList => ArrayRef[L<Paws::SMS::ReplicationRun>]

  Information about the replication runs.


=head2 RoleName => Str

  The name of the IAM role to be used by the Server Migration Service.


=head2 RunOnce => Bool

  


=head2 SeedReplicationTime => Str

  The seed replication time.


=head2 ServerId => Str

  The identifier of the server.


=head2 ServerType => Str

  The type of server.


=head2 State => Str

  The state of the replication job.


=head2 StatusMessage => Str

  The description of the current status of the replication job.


=head2 VmServer => L<Paws::SMS::VmServer>

  Information about the VM server.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

