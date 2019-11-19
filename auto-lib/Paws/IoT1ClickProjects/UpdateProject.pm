
package Paws::IoT1ClickProjects::UpdateProject;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_PlacementTemplate/;
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has PlacementTemplate => (is => 'ro', isa => IoT1ClickProjects_PlacementTemplate, predicate => 1);
  has ProjectName => (is => 'ro', isa => Str, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'UpdateProject');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/projects/{projectName}');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'PUT');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::IoT1ClickProjects::UpdateProjectResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'ProjectName' => 'projectName'
                  },
  'types' => {
               'ProjectName' => {
                                  'type' => 'Str'
                                },
               'PlacementTemplate' => {
                                        'class' => 'Paws::IoT1ClickProjects::PlacementTemplate',
                                        'type' => 'IoT1ClickProjects_PlacementTemplate'
                                      },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Description' => 'description',
                       'PlacementTemplate' => 'placementTemplate'
                     },
  'IsRequired' => {
                    'ProjectName' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::UpdateProject - Arguments for method UpdateProject on L<Paws::IoT1ClickProjects>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the
L<AWS IoT 1-Click Projects Service|Paws::IoT1ClickProjects> service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

=head1 SYNOPSIS

    my $projects.iot1click = Paws->service('IoT1ClickProjects');
    my $UpdateProjectResponse = $projects . iot1click->UpdateProject(
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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/projects.iot1click/UpdateProject>

=head1 ATTRIBUTES


=head2 Description => Str

An optional user-defined description for the project.



=head2 PlacementTemplate => IoT1ClickProjects_PlacementTemplate

An object defining the project update. Once a project has been created,
you cannot add device template names to the project. However, for a
given C<placementTemplate>, you can update the associated
C<callbackOverrides> for the device definition using this API.



=head2 B<REQUIRED> ProjectName => Str

The name of the project to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

