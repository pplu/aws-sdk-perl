package Paws::EC2::CreateTransitGatewayMulticastDomainRequestOptions;
  use Moose;
  has AutoAcceptSharedAssociations => (is => 'ro', isa => 'Str');
  has Igmpv2Support => (is => 'ro', isa => 'Str');
  has StaticSourcesSupport => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateTransitGatewayMulticastDomainRequestOptions

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::CreateTransitGatewayMulticastDomainRequestOptions object:

  $service_obj->Method(Att1 => { AutoAcceptSharedAssociations => $value, ..., StaticSourcesSupport => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::CreateTransitGatewayMulticastDomainRequestOptions object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoAcceptSharedAssociations

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AutoAcceptSharedAssociations => Str

Indicates whether to automatically accept cross-account subnet
associations that are associated with the transit gateway multicast
domain.


=head2 Igmpv2Support => Str

Specify whether to enable Internet Group Management Protocol (IGMP)
version 2 for the transit gateway multicast domain.


=head2 StaticSourcesSupport => Str

Specify whether to enable support for statically configuring multicast
group sources for a domain.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
