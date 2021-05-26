
package Paws::DeviceFarm::ListTestGridProjects;
  use Moose;
  has MaxResult => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResult' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTestGridProjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListTestGridProjectsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListTestGridProjects - Arguments for method ListTestGridProjects on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTestGridProjects on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListTestGridProjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTestGridProjects.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $ListTestGridProjectsResult = $devicefarm->ListTestGridProjects(
      MaxResult => 1,                      # OPTIONAL
      NextToken => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken        = $ListTestGridProjectsResult->NextToken;
    my $TestGridProjects = $ListTestGridProjectsResult->TestGridProjects;

    # Returns a L<Paws::DeviceFarm::ListTestGridProjectsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListTestGridProjects>

=head1 ATTRIBUTES


=head2 MaxResult => Int

Return no more than this number of results.



=head2 NextToken => Str

From a response, used to continue a paginated listing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTestGridProjects in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

