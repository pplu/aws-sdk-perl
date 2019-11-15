package Paws::ECS::InferenceAcceleratorOverride;
  use Moose;
  has DeviceName => (is => 'ro', isa => 'Str', request_name => 'deviceName', traits => ['NameInRequest']);
  has DeviceType => (is => 'ro', isa => 'Str', request_name => 'deviceType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::InferenceAcceleratorOverride

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::InferenceAcceleratorOverride object:

  $service_obj->Method(Att1 => { DeviceName => $value, ..., DeviceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::InferenceAcceleratorOverride object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceName

=head1 DESCRIPTION

Details on an Elastic Inference accelerator task override. This
parameter is used to override the Elastic Inference accelerator
specified in the task definition. For more information, see Working
with Amazon Elastic Inference on Amazon ECS
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-eia.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=head1 ATTRIBUTES


=head2 DeviceName => Str

  The Elastic Inference accelerator device name to override for the task.
This parameter must match a C<deviceName> specified in the task
definition.


=head2 DeviceType => Str

  The Elastic Inference accelerator type to use.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

