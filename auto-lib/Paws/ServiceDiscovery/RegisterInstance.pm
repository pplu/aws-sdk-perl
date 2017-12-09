
package Paws::ServiceDiscovery::RegisterInstance;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::ServiceDiscovery::Attributes', required => 1);
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has ServiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::RegisterInstanceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::RegisterInstance - Arguments for method RegisterInstance on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterInstance on the 
Amazon Route 53 Auto Naming service. Use the attributes of this class
as arguments to method RegisterInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterInstance.

As an example:

  $service_obj->RegisterInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::ServiceDiscovery::Attributes>

A string map that contain attribute keys and values. Supported
attribute keys include the following:

=over

=item *

C<AWS_INSTANCE_PORT>: The port on the endpoint that you want Amazon
Route 53 to perform health checks on. This value is also used for the
port value in an SRV record if the service that you specify includes an
SRV record. For more information, see CreateService.

=item *

C<AWS_INSTANCE_IPV4>: If the service that you specify contains a
resource record set template for an A record, the IPv4 address that you
want Amazon Route 53 to use for the value of the A record.

=item *

C<AWS_INSTANCE_IPV6>: If the service that you specify contains a
resource record set template for an AAAA record, the IPv6 address that
you want Amazon Route 53 to use for the value of the AAAA record.

=back




=head2 CreatorRequestId => Str

An optional parameter that you can use to resolve concurrent creation
requests. C<CreatorRequestId> helps to determine if a specific client
owns the namespace.



=head2 B<REQUIRED> InstanceId => Str

An identifier that you want to associate with the instance. Note the
following:

=over

=item *

You can use this value to update an existing instance.

=item *

To register a new instance, you must specify a value that is unique
among instances that you register by using the same service.

=back




=head2 B<REQUIRED> ServiceId => Str

The ID of the service that you want to use for settings for the
resource record sets and health check that Amazon Route 53 will create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterInstance in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

