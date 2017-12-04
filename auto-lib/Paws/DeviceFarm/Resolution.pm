package Paws::DeviceFarm::Resolution;
  use Moose;
  has Height => (is => 'ro', isa => 'Int', request_name => 'height', traits => ['NameInRequest']);
  has Width => (is => 'ro', isa => 'Int', request_name => 'width', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Resolution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Resolution object:

  $service_obj->Method(Att1 => { Height => $value, ..., Width => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Resolution object:

  $result = $service_obj->Method(...);
  $result->Att1->Height

=head1 DESCRIPTION

Represents the screen resolution of a device in height and width,
expressed in pixels.

=head1 ATTRIBUTES


=head2 Height => Int

  The screen resolution's height, expressed in pixels.


=head2 Width => Int

  The screen resolution's width, expressed in pixels.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

