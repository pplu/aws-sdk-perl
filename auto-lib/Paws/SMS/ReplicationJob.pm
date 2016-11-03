package Paws::SMS::ReplicationJob;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has Frequency => (is => 'ro', isa => 'Int', xmlname => 'frequency', request_name => 'frequency', traits => ['Unwrapped','NameInRequest']);
  has LatestAmiId => (is => 'ro', isa => 'Str', xmlname => 'latestAmiId', request_name => 'latestAmiId', traits => ['Unwrapped','NameInRequest']);
  has LicenseType => (is => 'ro', isa => 'Str', xmlname => 'licenseType', request_name => 'licenseType', traits => ['Unwrapped','NameInRequest']);
  has NextReplicationRunStartTime => (is => 'ro', isa => 'Str', xmlname => 'nextReplicationRunStartTime', request_name => 'nextReplicationRunStartTime', traits => ['Unwrapped','NameInRequest']);
  has ReplicationJobId => (is => 'ro', isa => 'Str', xmlname => 'replicationJobId', request_name => 'replicationJobId', traits => ['Unwrapped','NameInRequest']);
  has ReplicationRunList => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ReplicationRun]', request_name => 'item', xmlname => 'replicationRunList', request_name => 'replicationRunList', traits => ['NameInRequest','Unwrapped','NameInRequest']);
  has RoleName => (is => 'ro', isa => 'Str', xmlname => 'roleName', request_name => 'roleName', traits => ['Unwrapped','NameInRequest']);
  has SeedReplicationTime => (is => 'ro', isa => 'Str', xmlname => 'seedReplicationTime', request_name => 'seedReplicationTime', traits => ['Unwrapped','NameInRequest']);
  has ServerId => (is => 'ro', isa => 'Str', xmlname => 'serverId', request_name => 'serverId', traits => ['Unwrapped','NameInRequest']);
  has ServerType => (is => 'ro', isa => 'Str', xmlname => 'serverType', request_name => 'serverType', traits => ['Unwrapped','NameInRequest']);
  has State => (is => 'ro', isa => 'Str', xmlname => 'state', request_name => 'state', traits => ['Unwrapped','NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', xmlname => 'statusMessage', request_name => 'statusMessage', traits => ['Unwrapped','NameInRequest']);
  has VmServer => (is => 'ro', isa => 'Paws::SMS::VmServer', xmlname => 'vmServer', request_name => 'vmServer', traits => ['Unwrapped','NameInRequest']);
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

Object representing a Replication Job

=head1 ATTRIBUTES


=head2 Description => Str

  


=head2 Frequency => Int

  


=head2 LatestAmiId => Str

  


=head2 LicenseType => Str

  


=head2 NextReplicationRunStartTime => Str

  


=head2 ReplicationJobId => Str

  


=head2 ReplicationRunList => ArrayRef[L<Paws::SMS::ReplicationRun>]

  


=head2 RoleName => Str

  


=head2 SeedReplicationTime => Str

  


=head2 ServerId => Str

  


=head2 ServerType => Str

  


=head2 State => Str

  


=head2 StatusMessage => Str

  


=head2 VmServer => L<Paws::SMS::VmServer>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

