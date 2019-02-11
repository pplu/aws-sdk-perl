
package Paws::ServiceDiscovery::UpdateInstanceCustomHealthStatus;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);
  has Status => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateInstanceCustomHealthStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::UpdateInstanceCustomHealthStatus - Arguments for method UpdateInstanceCustomHealthStatus on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateInstanceCustomHealthStatus on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method UpdateInstanceCustomHealthStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateInstanceCustomHealthStatus.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    $servicediscovery->UpdateInstanceCustomHealthStatus(
      InstanceId => 'MyResourceId',
      ServiceId  => 'MyResourceId',
      Status     => 'HEALTHY',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/UpdateInstanceCustomHealthStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The ID of the instance that you want to change the health status for.



=head2 B<REQUIRED> ServiceId => Str

The ID of the service that includes the configuration for the custom
health check that you want to change the status for.



=head2 B<REQUIRED> Status => Str

The new status of the instance, C<HEALTHY> or C<UNHEALTHY>.

Valid values are: C<"HEALTHY">, C<"UNHEALTHY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateInstanceCustomHealthStatus in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

