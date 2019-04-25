
package Paws::IoT1ClickProjects::ListPlacements;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has ProjectName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'projectName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPlacements');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{projectName}/placements');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT1ClickProjects::ListPlacementsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::ListPlacements - Arguments for method ListPlacements on L<Paws::IoT1ClickProjects>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPlacements on the
L<AWS IoT 1-Click Projects Service|Paws::IoT1ClickProjects> service. Use the attributes of this class
as arguments to method ListPlacements.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPlacements.

=head1 SYNOPSIS

    my $projects.iot1click = Paws->service('IoT1ClickProjects');
    my $ListPlacementsResponse = $projects . iot1click->ListPlacements(
      ProjectName => 'MyProjectName',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListPlacementsResponse->NextToken;
    my $Placements = $ListPlacementsResponse->Placements;

    # Returns a L<Paws::IoT1ClickProjects::ListPlacementsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/projects.iot1click/ListPlacements>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per request. If not set, a
default value of 100 is used.



=head2 NextToken => Str

The token to retrieve the next set of results.



=head2 B<REQUIRED> ProjectName => Str

The project containing the placements to be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPlacements in L<Paws::IoT1ClickProjects>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

