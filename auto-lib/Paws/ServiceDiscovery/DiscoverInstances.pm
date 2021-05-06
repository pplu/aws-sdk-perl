
package Paws::ServiceDiscovery::DiscoverInstances;
  use Moose;
  has HealthStatus => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NamespaceName => (is => 'ro', isa => 'Str', required => 1);
  has QueryParameters => (is => 'ro', isa => 'Paws::ServiceDiscovery::Attributes');
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DiscoverInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::DiscoverInstancesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::DiscoverInstances - Arguments for method DiscoverInstances on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DiscoverInstances on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method DiscoverInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DiscoverInstances.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $DiscoverInstancesResponse = $servicediscovery->DiscoverInstances(
      NamespaceName   => 'MyNamespaceName',
      ServiceName     => 'MyServiceName',
      HealthStatus    => 'HEALTHY',           # OPTIONAL
      MaxResults      => 1,                   # OPTIONAL
      QueryParameters => {
        'MyAttrKey' => 'MyAttrValue',         # key: max: 255, value: max: 1024
      },    # OPTIONAL
    );

    # Results:
    my $Instances = $DiscoverInstancesResponse->Instances;

    # Returns a L<Paws::ServiceDiscovery::DiscoverInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/DiscoverInstances>

=head1 ATTRIBUTES


=head2 HealthStatus => Str

The health status of the instances that you want to discover.

Valid values are: C<"HEALTHY">, C<"UNHEALTHY">, C<"ALL">

=head2 MaxResults => Int

The maximum number of instances that you want Cloud Map to return in
the response to a C<DiscoverInstances> request. If you don't specify a
value for C<MaxResults>, Cloud Map returns up to 100 instances.



=head2 B<REQUIRED> NamespaceName => Str

The name of the namespace that you specified when you registered the
instance.



=head2 QueryParameters => L<Paws::ServiceDiscovery::Attributes>

A string map that contains attributes with values that you can use to
filter instances by any custom attribute that you specified when you
registered the instance. Only instances that match all the specified
key/value pairs will be returned.



=head2 B<REQUIRED> ServiceName => Str

The name of the service that you specified when you registered the
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DiscoverInstances in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

