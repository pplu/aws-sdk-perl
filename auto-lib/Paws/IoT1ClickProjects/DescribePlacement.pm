
package Paws::IoT1ClickProjects::DescribePlacement;
  use Moose;
  has PlacementName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'placementName', required => 1);
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePlacement');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{projectName}/placements/{placementName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickProjects::DescribePlacementResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::DescribePlacement - Arguments for method DescribePlacement on L<Paws::IoT1ClickProjects>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePlacement on the
L<AWS IoT 1-Click Projects Service|Paws::IoT1ClickProjects> service. Use the attributes of this class
as arguments to method DescribePlacement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePlacement.

=head1 SYNOPSIS

    my $projects.iot1click = Paws->service('IoT1ClickProjects');
    my $DescribePlacementResponse = $projects . iot1click->DescribePlacement(
      PlacementName => 'MyPlacementName',
      ProjectName   => 'MyProjectName',

    );

    # Results:
    my $Placement = $DescribePlacementResponse->Placement;

    # Returns a L<Paws::IoT1ClickProjects::DescribePlacementResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/projects.iot1click/DescribePlacement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PlacementName => Str

The name of the placement within a project.



=head2 B<REQUIRED> ProjectName => Str

The project containing the placement to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePlacement in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

