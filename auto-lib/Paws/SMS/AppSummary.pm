package Paws::SMS::AppSummary;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', request_name => 'appId', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has LastModified => (is => 'ro', isa => 'Str', request_name => 'lastModified', traits => ['NameInRequest']);
  has LatestReplicationTime => (is => 'ro', isa => 'Str', request_name => 'latestReplicationTime', traits => ['NameInRequest']);
  has LaunchDetails => (is => 'ro', isa => 'Paws::SMS::LaunchDetails', request_name => 'launchDetails', traits => ['NameInRequest']);
  has LaunchStatus => (is => 'ro', isa => 'Str', request_name => 'launchStatus', traits => ['NameInRequest']);
  has LaunchStatusMessage => (is => 'ro', isa => 'Str', request_name => 'launchStatusMessage', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ReplicationStatus => (is => 'ro', isa => 'Str', request_name => 'replicationStatus', traits => ['NameInRequest']);
  has ReplicationStatusMessage => (is => 'ro', isa => 'Str', request_name => 'replicationStatusMessage', traits => ['NameInRequest']);
  has RoleName => (is => 'ro', isa => 'Str', request_name => 'roleName', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has TotalServerGroups => (is => 'ro', isa => 'Int', request_name => 'totalServerGroups', traits => ['NameInRequest']);
  has TotalServers => (is => 'ro', isa => 'Int', request_name => 'totalServers', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::AppSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SMS::AppSummary object:

  $service_obj->Method(Att1 => { AppId => $value, ..., TotalServers => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SMS::AppSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AppId

=head1 DESCRIPTION

Information about the application.

=head1 ATTRIBUTES


=head2 AppId => Str

  Unique ID of the application.


=head2 CreationTime => Str

  Time of creation of this application.


=head2 Description => Str

  Description of the application.


=head2 LastModified => Str

  Timestamp of the application's creation.


=head2 LatestReplicationTime => Str

  Timestamp of the application's most recent successful replication.


=head2 LaunchDetails => L<Paws::SMS::LaunchDetails>

  Details about the latest launch of the application.


=head2 LaunchStatus => Str

  Launch status of the application.


=head2 LaunchStatusMessage => Str

  A message related to the launch status of the application.


=head2 Name => Str

  Name of the application.


=head2 ReplicationStatus => Str

  Replication status of the application.


=head2 ReplicationStatusMessage => Str

  A message related to the replication status of the application.


=head2 RoleName => Str

  Name of the service role in the customer's account used by AWS SMS.


=head2 Status => Str

  Status of the application.


=head2 StatusMessage => Str

  A message related to the status of the application


=head2 TotalServerGroups => Int

  Number of server groups present in the application.


=head2 TotalServers => Int

  Number of servers present in the application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

