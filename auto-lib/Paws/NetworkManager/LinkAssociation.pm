package Paws::NetworkManager::LinkAssociation;
  use Moose;
  has DeviceId => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str');
  has LinkAssociationState => (is => 'ro', isa => 'Str');
  has LinkId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::LinkAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::LinkAssociation object:

  $service_obj->Method(Att1 => { DeviceId => $value, ..., LinkId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::LinkAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceId

=head1 DESCRIPTION

Describes the association between a device and a link.

=head1 ATTRIBUTES


=head2 DeviceId => Str

  The device ID for the link association.


=head2 GlobalNetworkId => Str

  The ID of the global network.


=head2 LinkAssociationState => Str

  The state of the association.


=head2 LinkId => Str

  The ID of the link.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

