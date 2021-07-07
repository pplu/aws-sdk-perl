
package Paws::ServiceDiscovery::DiscoverInstances;
  use Moose;
  has HealthStatus => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NamespaceName => (is => 'ro', isa => 'Str', required => 1);
  has OptionalParameters => (is => 'ro', isa => 'Paws::ServiceDiscovery::Attributes');
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
      NamespaceName      => 'MyNamespaceName',
      ServiceName        => 'MyServiceName',
      HealthStatus       => 'HEALTHY',           # OPTIONAL
      MaxResults         => 1,                   # OPTIONAL
      OptionalParameters => {
        'MyAttrKey' => 'MyAttrValue',    # key: max: 255, value: max: 1024
      },    # OPTIONAL
      QueryParameters => {
        'MyAttrKey' => 'MyAttrValue',    # key: max: 255, value: max: 1024
      },    # OPTIONAL
    );

    # Results:
    my $Instances = $DiscoverInstancesResponse->Instances;

    # Returns a L<Paws::ServiceDiscovery::DiscoverInstancesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/DiscoverInstances>

=head1 ATTRIBUTES


=head2 HealthStatus => Str

The health status of the instances that you want to discover. This
parameter is ignored for services that don't have a health check
configured, and all instances are returned.

=over

=item HEALTHY

Returns healthy instances.

=item UNHEALTHY

Returns unhealthy instances.

=item ALL

Returns all instances.

=item HEALTHY_OR_ELSE_ALL

Returns healthy instances, unless none are reporting a healthy state.
In that case, return all instances. This is also called failing open.

=back


Valid values are: C<"HEALTHY">, C<"UNHEALTHY">, C<"ALL">, C<"HEALTHY_OR_ELSE_ALL">

=head2 MaxResults => Int

The maximum number of instances that you want Cloud Map to return in
the response to a C<DiscoverInstances> request. If you don't specify a
value for C<MaxResults>, Cloud Map returns up to 100 instances.



=head2 B<REQUIRED> NamespaceName => Str

The C<HttpName> name of the namespace. It's found in the
C<HttpProperties> member of the C<Properties> member of the namespace.



=head2 OptionalParameters => L<Paws::ServiceDiscovery::Attributes>

Opportunistic filters to scope the results based on custom attributes.
If there are instances that match both the filters specified in both
the C<QueryParameters> parameter and this parameter, all of these
instances are returned. Otherwise, the filters are ignored, and only
instances that match the filters that are specified in the
C<QueryParameters> parameter are returned.



=head2 QueryParameters => L<Paws::ServiceDiscovery::Attributes>

Filters to scope the results based on custom attributes for the
instance (for example, C<{version=v1, az=1a}>). Only instances that
match all the specified key-value pairs are returned.



=head2 B<REQUIRED> ServiceName => Str

The name of the service that you specified when you registered the
instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DiscoverInstances in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

