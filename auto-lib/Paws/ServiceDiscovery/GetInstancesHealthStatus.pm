
package Paws::ServiceDiscovery::GetInstancesHealthStatus;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetInstancesHealthStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::GetInstancesHealthStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::GetInstancesHealthStatus - Arguments for method GetInstancesHealthStatus on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetInstancesHealthStatus on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method GetInstancesHealthStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetInstancesHealthStatus.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $GetInstancesHealthStatusResponse =
      $servicediscovery->GetInstancesHealthStatus(
      ServiceId => 'MyResourceId',
      Instances => [
        'MyResourceId', ...    # max: 64
      ],                       # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $GetInstancesHealthStatusResponse->NextToken;
    my $Status    = $GetInstancesHealthStatusResponse->Status;

 # Returns a L<Paws::ServiceDiscovery::GetInstancesHealthStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/GetInstancesHealthStatus>

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[Str|Undef]

An array that contains the IDs of all the instances that you want to
get the health status for.

If you omit C<Instances>, AWS Cloud Map returns the health status for
all the instances that are associated with the specified service.

To get the IDs for the instances that you've registered by using a
specified service, submit a ListInstances request.



=head2 MaxResults => Int

The maximum number of instances that you want AWS Cloud Map to return
in the response to a C<GetInstancesHealthStatus> request. If you don't
specify a value for C<MaxResults>, AWS Cloud Map returns up to 100
instances.



=head2 NextToken => Str

For the first C<GetInstancesHealthStatus> request, omit this value.

If more than C<MaxResults> instances match the specified criteria, you
can submit another C<GetInstancesHealthStatus> request to get the next
group of results. Specify the value of C<NextToken> from the previous
response in the next request.



=head2 B<REQUIRED> ServiceId => Str

The ID of the service that the instance is associated with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetInstancesHealthStatus in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

