package Paws::Lightsail::AttachedDisk;
  use Moose;
  has Path => (is => 'ro', isa => 'Str', request_name => 'path', traits => ['NameInRequest']);
  has SizeInGb => (is => 'ro', isa => 'Int', request_name => 'sizeInGb', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::AttachedDisk

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::AttachedDisk object:

  $service_obj->Method(Att1 => { Path => $value, ..., SizeInGb => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::AttachedDisk object:

  $result = $service_obj->Method(...);
  $result->Att1->Path

=head1 DESCRIPTION

Describes a block storage disk that is attached to an instance, and is
included in an automatic snapshot.

=head1 ATTRIBUTES


=head2 Path => Str

  The path of the disk (e.g., C</dev/xvdf>).


=head2 SizeInGb => Int

  The size of the disk in GB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

