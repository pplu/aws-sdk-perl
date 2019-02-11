
package Paws::IoT1ClickProjects::CreateProject;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has PlacementTemplate => (is => 'ro', isa => 'Paws::IoT1ClickProjects::PlacementTemplate', traits => ['NameInRequest'], request_name => 'placementTemplate');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickProjects::CreateProjectResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::CreateProject - Arguments for method CreateProject on L<Paws::IoT1ClickProjects>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the
L<AWS IoT 1-Click Projects Service|Paws::IoT1ClickProjects> service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

=head1 SYNOPSIS

    my $projects.iot1click = Paws->service('IoT1ClickProjects');
    my $CreateProjectResponse = $projects . iot1click->CreateProject(
      ProjectName       => 'MyProjectName',
      Description       => 'MyDescription',    # OPTIONAL
      PlacementTemplate => {
        DefaultAttributes => {
          'MyAttributeName' =>
            'MyAttributeDefaultValue',  # key: min: 1, max: 128, value: max: 800
        },    # OPTIONAL
        DeviceTemplates => {
          'MyDeviceTemplateName' => {
            CallbackOverrides => {
              'MyDeviceCallbackKey' => 'MyDeviceCallbackValue'
              ,    # key: min: 1, max: 128, value: max: 200
            },    # OPTIONAL
            DeviceType => 'MyDeviceType',    # max: 128; OPTIONAL
          },    # key: min: 1, max: 128
        },    # OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/projects.iot1click/CreateProject>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description for the project.



=head2 PlacementTemplate => L<Paws::IoT1ClickProjects::PlacementTemplate>

The schema defining the placement to be created. A placement template
defines placement default attributes and device templates. You cannot
add or remove device templates after the project has been created.
However, you can update C<callbackOverrides> for the device templates
using the C<UpdateProject> API.



=head2 B<REQUIRED> ProjectName => Str

The name of the project to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

