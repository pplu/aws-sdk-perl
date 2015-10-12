package Paws::ECS::HostEntry;
  use Moose;
  has hostname => (is => 'ro', isa => 'Str', required => 1);
  has ipAddress => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::HostEntry

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::HostEntry object:

  $service_obj->Method(Att1 => { hostname => $value, ..., ipAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::HostEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->hostname

=head1 ATTRIBUTES

=head2 B<REQUIRED> hostname => Str

  The hostname to use in the C</etc/hosts> entry.

=head2 B<REQUIRED> ipAddress => Str

  The IP address to use in the C</etc/hosts> entry.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

