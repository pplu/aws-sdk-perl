package Paws::Lightsail::AvailabilityZone;
  use Moose;
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has ZoneName => (is => 'ro', isa => 'Str', request_name => 'zoneName', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AvailabilityZone

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::AvailabilityZone object:

  $service_obj->Method(Att1 => { State => $value, ..., ZoneName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::AvailabilityZone object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

Describes an Availability Zone.

=head1 ATTRIBUTES


=head2 State => Str

  The state of the Availability Zone.


=head2 ZoneName => Str

  The name of the Availability Zone. The format is C<us-east-2a>
(case-sensitive).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

