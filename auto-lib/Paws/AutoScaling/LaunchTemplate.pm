package Paws::AutoScaling::LaunchTemplate;
  use Moose;
  has LaunchTemplateSpecification => (is => 'ro', isa => 'Paws::AutoScaling::LaunchTemplateSpecification');
  has Overrides => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::LaunchTemplateOverrides]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::LaunchTemplate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::LaunchTemplate object:

  $service_obj->Method(Att1 => { LaunchTemplateSpecification => $value, ..., Overrides => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::LaunchTemplate object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchTemplateSpecification

=head1 DESCRIPTION

Describes a launch template and overrides.

The overrides are used to override the instance type specified by the
launch template with multiple instance types that can be used to launch
On-Demand Instances and Spot Instances.

=head1 ATTRIBUTES


=head2 LaunchTemplateSpecification => L<Paws::AutoScaling::LaunchTemplateSpecification>

  The launch template to use. You must specify either the launch template
ID or launch template name in the request.


=head2 Overrides => ArrayRef[L<Paws::AutoScaling::LaunchTemplateOverrides>]

  Any parameters that you specify override the same parameters in the
launch template. Currently, the only supported override is instance
type.

You must specify between 2 and 20 overrides.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

