# Generated by default/object.tt
package Paws::Batch::LaunchTemplateSpecification;
  use Moose;
  has LaunchTemplateId => (is => 'ro', isa => 'Str', request_name => 'launchTemplateId', traits => ['NameInRequest']);
  has LaunchTemplateName => (is => 'ro', isa => 'Str', request_name => 'launchTemplateName', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::LaunchTemplateSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::LaunchTemplateSpecification object:

  $service_obj->Method(Att1 => { LaunchTemplateId => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::LaunchTemplateSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchTemplateId

=head1 DESCRIPTION

An object representing a launch template associated with a compute
resource. You must specify either the launch template ID or launch
template name in the request, but not both.

If security groups are specified using both the C<securityGroupIds>
parameter of C<CreateComputeEnvironment> and the launch template, the
values in the C<securityGroupIds> parameter of
C<CreateComputeEnvironment> will be used.

This object isn't applicable to jobs running on Fargate resources.

=head1 ATTRIBUTES


=head2 LaunchTemplateId => Str

The ID of the launch template.


=head2 LaunchTemplateName => Str

The name of the launch template.


=head2 Version => Str

The version number of the launch template, C<$Latest>, or C<$Default>.

If the value is C<$Latest>, the latest version of the launch template
is used. If the value is C<$Default>, the default version of the launch
template is used.

After the compute environment is created, the launch template version
used will not be changed, even if the C<$Default> or C<$Latest> version
for the launch template is updated. To use a new launch template
version, create a new compute environment, add the new compute
environment to the existing job queue, remove the old compute
environment from the job queue, and delete the old compute environment.

Default: C<$Default>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

