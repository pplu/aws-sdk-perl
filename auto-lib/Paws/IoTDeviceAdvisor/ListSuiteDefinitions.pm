
package Paws::IoTDeviceAdvisor::ListSuiteDefinitions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSuiteDefinitions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/suiteDefinitions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTDeviceAdvisor::ListSuiteDefinitionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTDeviceAdvisor::ListSuiteDefinitions - Arguments for method ListSuiteDefinitions on L<Paws::IoTDeviceAdvisor>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSuiteDefinitions on the
L<AWS IoT Core Device Advisor|Paws::IoTDeviceAdvisor> service. Use the attributes of this class
as arguments to method ListSuiteDefinitions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSuiteDefinitions.

=head1 SYNOPSIS

    my $api.iotdeviceadvisor = Paws->service('IoTDeviceAdvisor');
    my $ListSuiteDefinitionsResponse =
      $api . iotdeviceadvisor->ListSuiteDefinitions(
      MaxResults => 1,            # OPTIONAL
      NextToken  => 'MyToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListSuiteDefinitionsResponse->NextToken;
    my $SuiteDefinitionInformationList =
      $ListSuiteDefinitionsResponse->SuiteDefinitionInformationList;

    # Returns a L<Paws::IoTDeviceAdvisor::ListSuiteDefinitionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotdeviceadvisor/ListSuiteDefinitions>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return at once.



=head2 NextToken => Str

A token used to get the next set of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSuiteDefinitions in L<Paws::IoTDeviceAdvisor>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

