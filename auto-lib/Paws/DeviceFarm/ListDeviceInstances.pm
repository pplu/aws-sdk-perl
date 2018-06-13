
package Paws::DeviceFarm::ListDeviceInstances;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDeviceInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::ListDeviceInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDeviceInstances - Arguments for method ListDeviceInstances on L<Paws::DeviceFarm>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDeviceInstances on the
L<AWS Device Farm|Paws::DeviceFarm> service. Use the attributes of this class
as arguments to method ListDeviceInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDeviceInstances.

=head1 SYNOPSIS

    my $devicefarm = Paws->service('DeviceFarm');
    my $ListDeviceInstancesResult = $devicefarm->ListDeviceInstances(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $DeviceInstances = $ListDeviceInstancesResult->DeviceInstances;
    my $NextToken       = $ListDeviceInstancesResult->NextToken;

    # Returns a L<Paws::DeviceFarm::ListDeviceInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/devicefarm/ListDeviceInstances>

=head1 ATTRIBUTES


=head2 MaxResults => Int

An integer specifying the maximum number of items you want to return in
the API response.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDeviceInstances in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

