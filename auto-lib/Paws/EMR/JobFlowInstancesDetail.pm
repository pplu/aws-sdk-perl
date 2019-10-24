# Generated from default/object.tt
package Paws::EMR::JobFlowInstancesDetail;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef Bool/;
  use Paws::EMR::Types qw/EMR_PlacementType EMR_InstanceGroupDetail/;
  has Ec2KeyName => (is => 'ro', isa => Str);
  has Ec2SubnetId => (is => 'ro', isa => Str);
  has HadoopVersion => (is => 'ro', isa => Str);
  has InstanceCount => (is => 'ro', isa => Int, required => 1);
  has InstanceGroups => (is => 'ro', isa => ArrayRef[EMR_InstanceGroupDetail]);
  has KeepJobFlowAliveWhenNoSteps => (is => 'ro', isa => Bool);
  has MasterInstanceId => (is => 'ro', isa => Str);
  has MasterInstanceType => (is => 'ro', isa => Str, required => 1);
  has MasterPublicDnsName => (is => 'ro', isa => Str);
  has NormalizedInstanceHours => (is => 'ro', isa => Int);
  has Placement => (is => 'ro', isa => EMR_PlacementType);
  has SlaveInstanceType => (is => 'ro', isa => Str, required => 1);
  has TerminationProtected => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MasterInstanceType' => {
                                         'type' => 'Str'
                                       },
               'MasterInstanceId' => {
                                       'type' => 'Str'
                                     },
               'NormalizedInstanceHours' => {
                                              'type' => 'Int'
                                            },
               'HadoopVersion' => {
                                    'type' => 'Str'
                                  },
               'Ec2SubnetId' => {
                                  'type' => 'Str'
                                },
               'TerminationProtected' => {
                                           'type' => 'Bool'
                                         },
               'MasterPublicDnsName' => {
                                          'type' => 'Str'
                                        },
               'SlaveInstanceType' => {
                                        'type' => 'Str'
                                      },
               'KeepJobFlowAliveWhenNoSteps' => {
                                                  'type' => 'Bool'
                                                },
               'InstanceCount' => {
                                    'type' => 'Int'
                                  },
               'Ec2KeyName' => {
                                 'type' => 'Str'
                               },
               'InstanceGroups' => {
                                     'class' => 'Paws::EMR::InstanceGroupDetail',
                                     'type' => 'ArrayRef[EMR_InstanceGroupDetail]'
                                   },
               'Placement' => {
                                'class' => 'Paws::EMR::PlacementType',
                                'type' => 'EMR_PlacementType'
                              }
             },
  'IsRequired' => {
                    'SlaveInstanceType' => 1,
                    'MasterInstanceType' => 1,
                    'InstanceCount' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::JobFlowInstancesDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::JobFlowInstancesDetail object:

  $service_obj->Method(Att1 => { Ec2KeyName => $value, ..., TerminationProtected => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::JobFlowInstancesDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Ec2KeyName

=head1 DESCRIPTION

Specify the type of Amazon EC2 instances that the cluster (job flow)
runs on.

=head1 ATTRIBUTES


=head2 Ec2KeyName => Str

  The name of an Amazon EC2 key pair that can be used to ssh to the
master node.


=head2 Ec2SubnetId => Str

  For clusters launched within Amazon Virtual Private Cloud, this is the
identifier of the subnet where the cluster was launched.


=head2 HadoopVersion => Str

  The Hadoop version for the cluster.


=head2 B<REQUIRED> InstanceCount => Int

  The number of Amazon EC2 instances in the cluster. If the value is 1,
the same instance serves as both the master and core and task node. If
the value is greater than 1, one instance is the master node and all
others are core and task nodes.


=head2 InstanceGroups => ArrayRef[EMR_InstanceGroupDetail]

  Details about the instance groups in a cluster.


=head2 KeepJobFlowAliveWhenNoSteps => Bool

  Specifies whether the cluster should remain available after completing
all steps.


=head2 MasterInstanceId => Str

  The Amazon EC2 instance identifier of the master node.


=head2 B<REQUIRED> MasterInstanceType => Str

  The Amazon EC2 master node instance type.


=head2 MasterPublicDnsName => Str

  The DNS name of the master node. If the cluster is on a private subnet,
this is the private DNS name. On a public subnet, this is the public
DNS name.


=head2 NormalizedInstanceHours => Int

  An approximation of the cost of the cluster, represented in
m1.small/hours. This value is incremented one time for every hour that
an m1.small runs. Larger instances are weighted more, so an Amazon EC2
instance that is roughly four times more expensive would result in the
normalized instance hours being incremented by four. This result is
only an approximation and does not reflect the actual billing rate.


=head2 Placement => EMR_PlacementType

  The Amazon EC2 Availability Zone for the cluster.


=head2 B<REQUIRED> SlaveInstanceType => Str

  The Amazon EC2 core and task node instance type.


=head2 TerminationProtected => Bool

  Specifies whether the Amazon EC2 instances in the cluster are protected
from termination by API calls, user intervention, or in the event of a
job-flow error.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

