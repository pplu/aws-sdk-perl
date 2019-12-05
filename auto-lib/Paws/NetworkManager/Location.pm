package Paws::NetworkManager::Location;
  use Moose;
  has Address => (is => 'ro', isa => 'Str');
  has Latitude => (is => 'ro', isa => 'Str');
  has Longitude => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::NetworkManager::Location object:

  $service_obj->Method(Att1 => { Address => $value, ..., Longitude => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::NetworkManager::Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Address

=head1 DESCRIPTION

Describes a location.

=head1 ATTRIBUTES


=head2 Address => Str

  The physical address.


=head2 Latitude => Str

  The latitude.


=head2 Longitude => Str

  The longitude.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

