# Generated from default/object.tt
package Paws::DAX::Cluster;
  use Moo;
  use Types::Standard qw/Int Str ArrayRef Undef/;
  use Paws::DAX::Types qw/DAX_SSEDescription DAX_ParameterGroupStatus DAX_NotificationConfiguration DAX_SecurityGroupMembership DAX_Node DAX_Endpoint/;
  has ActiveNodes => (is => 'ro', isa => Int);
  has ClusterArn => (is => 'ro', isa => Str);
  has ClusterDiscoveryEndpoint => (is => 'ro', isa => DAX_Endpoint);
  has ClusterName => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has IamRoleArn => (is => 'ro', isa => Str);
  has NodeIdsToRemove => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Nodes => (is => 'ro', isa => ArrayRef[DAX_Node]);
  has NodeType => (is => 'ro', isa => Str);
  has NotificationConfiguration => (is => 'ro', isa => DAX_NotificationConfiguration);
  has ParameterGroup => (is => 'ro', isa => DAX_ParameterGroupStatus);
  has PreferredMaintenanceWindow => (is => 'ro', isa => Str);
  has SecurityGroups => (is => 'ro', isa => ArrayRef[DAX_SecurityGroupMembership]);
  has SSEDescription => (is => 'ro', isa => DAX_SSEDescription);
  has Status => (is => 'ro', isa => Str);
  has SubnetGroup => (is => 'ro', isa => Str);
  has TotalNodes => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'SubnetGroup' => {
                                  'type' => 'Str'
                                },
               'TotalNodes' => {
                                 'type' => 'Int'
                               },
               'IamRoleArn' => {
                                 'type' => 'Str'
                               },
               'ClusterDiscoveryEndpoint' => {
                                               'class' => 'Paws::DAX::Endpoint',
                                               'type' => 'DAX_Endpoint'
                                             },
               'NotificationConfiguration' => {
                                                'class' => 'Paws::DAX::NotificationConfiguration',
                                                'type' => 'DAX_NotificationConfiguration'
                                              },
               'Nodes' => {
                            'class' => 'Paws::DAX::Node',
                            'type' => 'ArrayRef[DAX_Node]'
                          },
               'SSEDescription' => {
                                     'class' => 'Paws::DAX::SSEDescription',
                                     'type' => 'DAX_SSEDescription'
                                   },
               'ClusterArn' => {
                                 'type' => 'Str'
                               },
               'NodeIdsToRemove' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    },
               'NodeType' => {
                               'type' => 'Str'
                             },
               'ParameterGroup' => {
                                     'class' => 'Paws::DAX::ParameterGroupStatus',
                                     'type' => 'DAX_ParameterGroupStatus'
                                   },
               'ClusterName' => {
                                  'type' => 'Str'
                                },
               'ActiveNodes' => {
                                  'type' => 'Int'
                                },
               'PreferredMaintenanceWindow' => {
                                                 'type' => 'Str'
                                               },
               'Description' => {
                                  'type' => 'Str'
                                },
               'SecurityGroups' => {
                                     'class' => 'Paws::DAX::SecurityGroupMembership',
                                     'type' => 'ArrayRef[DAX_SecurityGroupMembership]'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DAX::Cluster object:

  $service_obj->Method(Att1 => { ActiveNodes => $value, ..., TotalNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DAX::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveNodes

=head1 DESCRIPTION

Contains all of the attributes of a specific DAX cluster.

=head1 ATTRIBUTES


=head2 ActiveNodes => Int

  The number of nodes in the cluster that are active (i.e., capable of
serving requests).


=head2 ClusterArn => Str

  The Amazon Resource Name (ARN) that uniquely identifies the cluster.


=head2 ClusterDiscoveryEndpoint => DAX_Endpoint

  The configuration endpoint for this DAX cluster, consisting of a DNS
name and a port number. Client applications can specify this endpoint,
rather than an individual node endpoint, and allow the DAX client
software to intelligently route requests and responses to nodes in the
DAX cluster.


=head2 ClusterName => Str

  The name of the DAX cluster.


=head2 Description => Str

  The description of the cluster.


=head2 IamRoleArn => Str

  A valid Amazon Resource Name (ARN) that identifies an IAM role. At
runtime, DAX will assume this role and use the role's permissions to
access DynamoDB on your behalf.


=head2 NodeIdsToRemove => ArrayRef[Str|Undef]

  A list of nodes to be removed from the cluster.


=head2 Nodes => ArrayRef[DAX_Node]

  A list of nodes that are currently in the cluster.


=head2 NodeType => Str

  The node type for the nodes in the cluster. (All nodes in a DAX cluster
are of the same type.)


=head2 NotificationConfiguration => DAX_NotificationConfiguration

  Describes a notification topic and its status. Notification topics are
used for publishing DAX events to subscribers using Amazon Simple
Notification Service (SNS).


=head2 ParameterGroup => DAX_ParameterGroupStatus

  The parameter group being used by nodes in the cluster.


=head2 PreferredMaintenanceWindow => Str

  A range of time when maintenance of DAX cluster software will be
performed. For example: C<sun:01:00-sun:09:00>. Cluster maintenance
normally takes less than 30 minutes, and is performed automatically
within the maintenance window.


=head2 SecurityGroups => ArrayRef[DAX_SecurityGroupMembership]

  A list of security groups, and the status of each, for the nodes in the
cluster.


=head2 SSEDescription => DAX_SSEDescription

  The description of the server-side encryption status on the specified
DAX cluster.


=head2 Status => Str

  The current status of the cluster.


=head2 SubnetGroup => Str

  The subnet group where the DAX cluster is running.


=head2 TotalNodes => Int

  The total number of nodes in the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

