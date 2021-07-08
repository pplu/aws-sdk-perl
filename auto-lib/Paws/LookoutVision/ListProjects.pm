
package Paws::LookoutVision::ListProjects;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProjects');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-11-20/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LookoutVision::ListProjectsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::ListProjects - Arguments for method ListProjects on L<Paws::LookoutVision>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProjects on the
L<Amazon Lookout for Vision|Paws::LookoutVision> service. Use the attributes of this class
as arguments to method ListProjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProjects.

=head1 SYNOPSIS

    my $lookoutvision = Paws->service('LookoutVision');
    my $ListProjectsResponse = $lookoutvision->ListProjects(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListProjectsResponse->NextToken;
    my $Projects  = $ListProjectsResponse->Projects;

    # Returns a L<Paws::LookoutVision::ListProjectsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lookoutvision/ListProjects>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return per paginated call. The largest
value you can specify is 100. If you specify a value greater than 100,
a ValidationException error occurs. The default value is 100.



=head2 NextToken => Str

If the previous response was incomplete (because there is more data to
retrieve), Amazon Lookout for Vision returns a pagination token in the
response. You can use this pagination token to retrieve the next set of
projects.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProjects in L<Paws::LookoutVision>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

