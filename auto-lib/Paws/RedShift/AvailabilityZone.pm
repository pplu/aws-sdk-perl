package Paws::RedShift::AvailabilityZone;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has SupportedPlatforms => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::SupportedPlatform]', request_name => 'SupportedPlatform', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::AvailabilityZone

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::AvailabilityZone object:

  $service_obj->Method(Att1 => { Name => $value, ..., SupportedPlatforms => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::AvailabilityZone object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes an availability zone.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of the availability zone.


=head2 SupportedPlatforms => ArrayRef[L<Paws::RedShift::SupportedPlatform>]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

