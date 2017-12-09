
package Paws::ServiceDiscovery::CreatePrivateDnsNamespace;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Vpc => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePrivateDnsNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::CreatePrivateDnsNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::CreatePrivateDnsNamespace - Arguments for method CreatePrivateDnsNamespace on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePrivateDnsNamespace on the 
Amazon Route 53 Auto Naming service. Use the attributes of this class
as arguments to method CreatePrivateDnsNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePrivateDnsNamespace.

As an example:

  $service_obj->CreatePrivateDnsNamespace(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

An optional parameter that you can use to resolve concurrent creation
requests. C<CreatorRequestId> helps to determine if a specific client
owns the namespace.



=head2 Description => Str

A description for the namespace.



=head2 B<REQUIRED> Name => Str

The name that you want to assign to this namespace. When you create a
namespace, Amazon Route 53 automatically creates a hosted zone that has
the same name as the namespace.



=head2 B<REQUIRED> Vpc => Str

The ID of the Amazon VPC that you want to associate the namespace with.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePrivateDnsNamespace in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

