
package Paws::IoT1ClickProjects::CreatePlacement;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoT1ClickProjects::PlacementAttributeMap', traits => ['NameInRequest'], request_name => 'attributes');
  has PlacementName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'placementName', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlacement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{projectName}/placements');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickProjects::CreatePlacementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::CreatePlacement - Arguments for method CreatePlacement on L<Paws::IoT1ClickProjects>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlacement on the
L<AWS IoT 1-Click Projects Service|Paws::IoT1ClickProjects> service. Use the attributes of this class
as arguments to method CreatePlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlacement.

=head1 SYNOPSIS

    my $projects.iot1click = Paws->service('IoT1ClickProjects');
    my $CreatePlacementResponse = $projects . iot1click->CreatePlacement(
      PlacementName => 'MyPlacementName',
      ProjectName   => 'MyProjectName',
      Attributes    => {
        'MyAttributeName' =>
          'MyAttributeValue',    # key: min: 1, max: 128, value: max: 800
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/projects.iot1click/CreatePlacement>

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::IoT1ClickProjects::PlacementAttributeMap>

Optional user-defined key/value pairs providing contextual data (such
as location or function) for the placement.



=head2 B<REQUIRED> PlacementName => Str

The name of the placement to be created.



=head2 B<REQUIRED> ProjectName => Str

The name of the project in which to create the placement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlacement in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

