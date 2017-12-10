package Paws::OpsWorks::LoadBasedAutoScalingConfiguration;
  use Moose;
  has DownScaling => (is => 'ro', isa => 'Paws::OpsWorks::AutoScalingThresholds');
  has Enable => (is => 'ro', isa => 'Bool');
  has LayerId => (is => 'ro', isa => 'Str');
  has UpScaling => (is => 'ro', isa => 'Paws::OpsWorks::AutoScalingThresholds');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::LoadBasedAutoScalingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::LoadBasedAutoScalingConfiguration object:

  $service_obj->Method(Att1 => { DownScaling => $value, ..., UpScaling => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::LoadBasedAutoScalingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DownScaling

=head1 DESCRIPTION

Describes a layer's load-based auto scaling configuration.

=head1 ATTRIBUTES


=head2 DownScaling => L<Paws::OpsWorks::AutoScalingThresholds>

  An C<AutoScalingThresholds> object that describes the downscaling
configuration, which defines how and when AWS OpsWorks Stacks reduces
the number of instances.


=head2 Enable => Bool

  Whether load-based auto scaling is enabled for the layer.


=head2 LayerId => Str

  The layer ID.


=head2 UpScaling => L<Paws::OpsWorks::AutoScalingThresholds>

  An C<AutoScalingThresholds> object that describes the upscaling
configuration, which defines how and when AWS OpsWorks Stacks increases
the number of instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

