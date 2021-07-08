
package Paws::IoTFleetHub::ListApplications;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListApplications');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTFleetHub::ListApplicationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetHub::ListApplications - Arguments for method ListApplications on L<Paws::IoTFleetHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListApplications on the
L<AWS IoT Fleet Hub|Paws::IoTFleetHub> service. Use the attributes of this class
as arguments to method ListApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListApplications.

=head1 SYNOPSIS

    my $api.fleethub.iot = Paws->service('IoTFleetHub');
    my $ListApplicationsResponse = $api . fleethub . iot->ListApplications(
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $ApplicationSummaries = $ListApplicationsResponse->ApplicationSummaries;
    my $NextToken            = $ListApplicationsResponse->NextToken;

    # Returns a L<Paws::IoTFleetHub::ListApplicationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.fleethub.iot/ListApplications>

=head1 ATTRIBUTES


=head2 NextToken => Str

A token used to get the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListApplications in L<Paws::IoTFleetHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

