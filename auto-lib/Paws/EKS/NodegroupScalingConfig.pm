# Generated from default/object.tt
package Paws::EKS::NodegroupScalingConfig;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::EKS::Types qw//;
  has DesiredSize => (is => 'ro', isa => Int);
  has MaxSize => (is => 'ro', isa => Int);
  has MinSize => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MinSize' => {
                              'type' => 'Int'
                            },
               'DesiredSize' => {
                                  'type' => 'Int'
                                },
               'MaxSize' => {
                              'type' => 'Int'
                            }
             },
  'NameInRequest' => {
                       'MinSize' => 'minSize',
                       'DesiredSize' => 'desiredSize',
                       'MaxSize' => 'maxSize'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::NodegroupScalingConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EKS::NodegroupScalingConfig object:

  $service_obj->Method(Att1 => { DesiredSize => $value, ..., MinSize => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EKS::NodegroupScalingConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->DesiredSize

=head1 DESCRIPTION

An object representing the scaling configuration details for the
AutoScaling group that is associated with your node group.

=head1 ATTRIBUTES


=head2 DesiredSize => Int

  The current number of worker nodes that the managed node group should
maintain.


=head2 MaxSize => Int

  The maximum number of worker nodes that the managed node group can
scale out to. Managed node groups can support up to 100 nodes by
default.


=head2 MinSize => Int

  The minimum number of worker nodes that the managed node group can
scale in to. This number must be greater than zero.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

