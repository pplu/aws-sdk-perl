# Generated by default/object.tt
package Paws::AppMesh::HttpGatewayRouteRewrite;
  use Moose;
  has Hostname => (is => 'ro', isa => 'Paws::AppMesh::GatewayRouteHostnameRewrite', request_name => 'hostname', traits => ['NameInRequest']);
  has Path => (is => 'ro', isa => 'Paws::AppMesh::HttpGatewayRoutePathRewrite', request_name => 'path', traits => ['NameInRequest']);
  has Prefix => (is => 'ro', isa => 'Paws::AppMesh::HttpGatewayRoutePrefixRewrite', request_name => 'prefix', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::HttpGatewayRouteRewrite

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::HttpGatewayRouteRewrite object:

  $service_obj->Method(Att1 => { Hostname => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::HttpGatewayRouteRewrite object:

  $result = $service_obj->Method(...);
  $result->Att1->Hostname

=head1 DESCRIPTION

An object representing the gateway route to rewrite.

=head1 ATTRIBUTES


=head2 Hostname => L<Paws::AppMesh::GatewayRouteHostnameRewrite>

The host name to rewrite.


=head2 Path => L<Paws::AppMesh::HttpGatewayRoutePathRewrite>

The path to rewrite.


=head2 Prefix => L<Paws::AppMesh::HttpGatewayRoutePrefixRewrite>

The specified beginning characters to rewrite.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

