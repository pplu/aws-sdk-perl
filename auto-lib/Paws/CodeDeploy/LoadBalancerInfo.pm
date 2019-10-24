# Generated from default/object.tt
package Paws::CodeDeploy::LoadBalancerInfo;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CodeDeploy::Types qw/CodeDeploy_TargetGroupInfo CodeDeploy_ELBInfo CodeDeploy_TargetGroupPairInfo/;
  has ElbInfoList => (is => 'ro', isa => ArrayRef[CodeDeploy_ELBInfo]);
  has TargetGroupInfoList => (is => 'ro', isa => ArrayRef[CodeDeploy_TargetGroupInfo]);
  has TargetGroupPairInfoList => (is => 'ro', isa => ArrayRef[CodeDeploy_TargetGroupPairInfo]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TargetGroupPairInfoList' => {
                                              'class' => 'Paws::CodeDeploy::TargetGroupPairInfo',
                                              'type' => 'ArrayRef[CodeDeploy_TargetGroupPairInfo]'
                                            },
               'ElbInfoList' => {
                                  'class' => 'Paws::CodeDeploy::ELBInfo',
                                  'type' => 'ArrayRef[CodeDeploy_ELBInfo]'
                                },
               'TargetGroupInfoList' => {
                                          'class' => 'Paws::CodeDeploy::TargetGroupInfo',
                                          'type' => 'ArrayRef[CodeDeploy_TargetGroupInfo]'
                                        }
             },
  'NameInRequest' => {
                       'TargetGroupPairInfoList' => 'targetGroupPairInfoList',
                       'ElbInfoList' => 'elbInfoList',
                       'TargetGroupInfoList' => 'targetGroupInfoList'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::LoadBalancerInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::LoadBalancerInfo object:

  $service_obj->Method(Att1 => { ElbInfoList => $value, ..., TargetGroupPairInfoList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::LoadBalancerInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ElbInfoList

=head1 DESCRIPTION

Information about the Elastic Load Balancing load balancer or target
group used in a deployment.

=head1 ATTRIBUTES


=head2 ElbInfoList => ArrayRef[CodeDeploy_ELBInfo]

  An array that contains information about the load balancer to use for
load balancing in a deployment. In Elastic Load Balancing, load
balancers are used with Classic Load Balancers.

Adding more than one load balancer to the array is not supported.


=head2 TargetGroupInfoList => ArrayRef[CodeDeploy_TargetGroupInfo]

  An array that contains information about the target group to use for
load balancing in a deployment. In Elastic Load Balancing, target
groups are used with Application Load Balancers.

Adding more than one target group to the array is not supported.


=head2 TargetGroupPairInfoList => ArrayRef[CodeDeploy_TargetGroupPairInfo]

  The target group pair information. This is an array of
C<TargeGroupPairInfo> objects with a maximum size of one.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

