package Paws::Lightsail::DiskMap;
  use Moose;
  has NewDiskName => (is => 'ro', isa => 'Str', request_name => 'newDiskName', traits => ['NameInRequest']);
  has OriginalDiskPath => (is => 'ro', isa => 'Str', request_name => 'originalDiskPath', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DiskMap

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::DiskMap object:

  $service_obj->Method(Att1 => { NewDiskName => $value, ..., OriginalDiskPath => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::DiskMap object:

  $result = $service_obj->Method(...);
  $result->Att1->NewDiskName

=head1 DESCRIPTION

Describes a block storage disk mapping.

=head1 ATTRIBUTES


=head2 NewDiskName => Str

  The new disk name (e.g., C<my-new-disk>).


=head2 OriginalDiskPath => Str

  The original disk path exposed to the instance (for example,
C</dev/sdh>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

