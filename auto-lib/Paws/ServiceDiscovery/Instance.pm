package Paws::ServiceDiscovery::Instance;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::ServiceDiscovery::Attributes');
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::Instance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceDiscovery::Instance object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceDiscovery::Instance object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

A complex type that contains information about an instance that Amazon
Route 53 creates when you submit a C<RegisterInstance> request.

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::ServiceDiscovery::Attributes>

  A string map that contains attribute keys and values. Supported
attribute keys include the following:

=over

=item *

C<AWS_INSTANCE_PORT>: The port on the endpoint that you want Amazon
Route 53 to perform health checks on. This value is also used for the
port value in an SRV record if the service that you specify includes an
SRV record. For more information, see CreateService.

=item *

C<AWS_INSTANCE_IP>: If the service that you specify contains a resource
record set template for an A or AAAA record, the IP address that you
want Amazon Route 53 to use for the value of the A record.

=item *

C<AWS_INSTANCE_WEIGHT>: The weight value in an SRV record if the
service that you specify includes an SRV record. You can also specify a
default weight that is applied to all instances in the C<Service>
configuration. For more information, see CreateService.

=item *

C<AWS_INSTANCE_PRIORITY>: The priority value in an SRV record if the
service that you specify includes an SRV record.

=back



=head2 CreatorRequestId => Str

  An optional parameter that you can use to resolve concurrent creation
requests. C<CreatorRequestId> helps to determine if a specific client
owns the namespace.


=head2 B<REQUIRED> Id => Str

  An identifier that you want to associate with the instance. Note the
following:

=over

=item *

You can use this value to update an existing instance.

=item *

To associate a new instance, you must specify a value that is unique
among instances that you associate by using the same service.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

