# Generated from default/object.tt
package Paws::SMS::AppSummary;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SMS::Types qw/SMS_LaunchDetails/;
  has AppId => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has LastModified => (is => 'ro', isa => Str);
  has LatestReplicationTime => (is => 'ro', isa => Str);
  has LaunchDetails => (is => 'ro', isa => SMS_LaunchDetails);
  has LaunchStatus => (is => 'ro', isa => Str);
  has LaunchStatusMessage => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has ReplicationStatus => (is => 'ro', isa => Str);
  has ReplicationStatusMessage => (is => 'ro', isa => Str);
  has RoleName => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StatusMessage => (is => 'ro', isa => Str);
  has TotalServerGroups => (is => 'ro', isa => Int);
  has TotalServers => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationStatus' => {
                                        'type' => 'Str'
                                      },
               'LatestReplicationTime' => {
                                            'type' => 'Str'
                                          },
               'TotalServers' => {
                                   'type' => 'Int'
                                 },
               'Status' => {
                             'type' => 'Str'
                           },
               'LaunchStatusMessage' => {
                                          'type' => 'Str'
                                        },
               'TotalServerGroups' => {
                                        'type' => 'Int'
                                      },
               'LaunchStatus' => {
                                   'type' => 'Str'
                                 },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'StatusMessage' => {
                                    'type' => 'Str'
                                  },
               'AppId' => {
                            'type' => 'Str'
                          },
               'LastModified' => {
                                   'type' => 'Str'
                                 },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'ReplicationStatusMessage' => {
                                               'type' => 'Str'
                                             },
               'LaunchDetails' => {
                                    'class' => 'Paws::SMS::LaunchDetails',
                                    'type' => 'SMS_LaunchDetails'
                                  },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'ReplicationStatus' => 'replicationStatus',
                       'LatestReplicationTime' => 'latestReplicationTime',
                       'TotalServers' => 'totalServers',
                       'Status' => 'status',
                       'LaunchStatusMessage' => 'launchStatusMessage',
                       'TotalServerGroups' => 'totalServerGroups',
                       'LaunchStatus' => 'launchStatus',
                       'RoleName' => 'roleName',
                       'StatusMessage' => 'statusMessage',
                       'AppId' => 'appId',
                       'LastModified' => 'lastModified',
                       'CreationTime' => 'creationTime',
                       'ReplicationStatusMessage' => 'replicationStatusMessage',
                       'LaunchDetails' => 'launchDetails',
                       'Description' => 'description',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }


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


=head2 LaunchDetails => SMS_LaunchDetails

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

