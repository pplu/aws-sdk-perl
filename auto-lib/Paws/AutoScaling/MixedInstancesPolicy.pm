# Generated from default/object.tt
package Paws::AutoScaling::MixedInstancesPolicy;
  use Moo;
  use Types::Standard qw//;
  use Paws::AutoScaling::Types qw/AutoScaling_InstancesDistribution AutoScaling_LaunchTemplate/;
  has InstancesDistribution => (is => 'ro', isa => AutoScaling_InstancesDistribution);
  has LaunchTemplate => (is => 'ro', isa => AutoScaling_LaunchTemplate);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'InstancesDistribution' => {
                                            'class' => 'Paws::AutoScaling::InstancesDistribution',
                                            'type' => 'AutoScaling_InstancesDistribution'
                                          },
               'LaunchTemplate' => {
                                     'class' => 'Paws::AutoScaling::LaunchTemplate',
                                     'type' => 'AutoScaling_LaunchTemplate'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::MixedInstancesPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::MixedInstancesPolicy object:

  $service_obj->Method(Att1 => { InstancesDistribution => $value, ..., LaunchTemplate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::MixedInstancesPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->InstancesDistribution

=head1 DESCRIPTION

Describes a mixed instances policy for an Auto Scaling group. With
mixed instances, your Auto Scaling group can provision a combination of
On-Demand Instances and Spot Instances across multiple instance types.
For more information, see Auto Scaling Groups with Multiple Instance
Types and Purchase Options
(https://docs.aws.amazon.com/autoscaling/ec2/userguide/asg-purchase-options.html)
in the I<Amazon EC2 Auto Scaling User Guide>.

You can create a mixed instances policy for a new Auto Scaling group,
or you can create it for an existing group by updating the group to
specify C<MixedInstancesPolicy> as the top-level parameter instead of a
launch configuration or template. For more information, see
CreateAutoScalingGroup and UpdateAutoScalingGroup.

=head1 ATTRIBUTES


=head2 InstancesDistribution => AutoScaling_InstancesDistribution

  The instances distribution to use.

If you leave this parameter unspecified, the value for each parameter
in C<InstancesDistribution> uses a default value.


=head2 LaunchTemplate => AutoScaling_LaunchTemplate

  The launch template and instance types (overrides).

This parameter must be specified when creating a mixed instances
policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

