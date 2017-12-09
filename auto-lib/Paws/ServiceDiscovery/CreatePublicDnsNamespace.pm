
package Paws::ServiceDiscovery::CreatePublicDnsNamespace;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePublicDnsNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::CreatePublicDnsNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::CreatePublicDnsNamespace - Arguments for method CreatePublicDnsNamespace on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePublicDnsNamespace on the 
Amazon Route 53 Auto Naming service. Use the attributes of this class
as arguments to method CreatePublicDnsNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePublicDnsNamespace.

As an example:

  $service_obj->CreatePublicDnsNamespace(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

An optional parameter that you can use to resolve concurrent creation
requests. C<CreatorRequestId> helps to determine if a specific client
owns the namespace.



=head2 Description => Str

A description for the namespace.



=head2 B<REQUIRED> Name => Str

The name that you want to assign to this namespace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePublicDnsNamespace in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

