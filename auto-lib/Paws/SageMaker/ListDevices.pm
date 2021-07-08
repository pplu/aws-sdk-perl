
package Paws::SageMaker::ListDevices;
  use Moose;
  has DeviceFleetName => (is => 'ro', isa => 'Str');
  has LatestHeartbeatAfter => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has ModelName => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDevices');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::ListDevicesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListDevices - Arguments for method ListDevices on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDevices on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method ListDevices.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDevices.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $ListDevicesResponse = $api . sagemaker->ListDevices(
      DeviceFleetName      => 'MyEntityName',           # OPTIONAL
      LatestHeartbeatAfter => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults           => 1,                        # OPTIONAL
      ModelName            => 'MyEntityName',           # OPTIONAL
      NextToken            => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $DeviceSummaries = $ListDevicesResponse->DeviceSummaries;
    my $NextToken       = $ListDevicesResponse->NextToken;

    # Returns a L<Paws::SageMaker::ListDevicesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/ListDevices>

=head1 ATTRIBUTES


=head2 DeviceFleetName => Str

Filter for fleets containing this name in their device fleet name.



=head2 LatestHeartbeatAfter => Str

Select fleets where the job was updated after X



=head2 MaxResults => Int

Maximum number of results to select.



=head2 ModelName => Str

A filter that searches devices that contains this name in any of their
models.



=head2 NextToken => Str

The response from the last list when returning a list large enough to
need tokening.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDevices in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

