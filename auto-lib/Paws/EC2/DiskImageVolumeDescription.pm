package Paws::EC2::DiskImageVolumeDescription;
  use Moo;  use Types::Standard qw/Str Int/;
  use Paws::EC2::Types qw//;
  has Id => (is => 'ro', isa => Str);
  has Size => (is => 'ro', isa => Int);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Size' => {
                           'type' => 'Int'
                         },
               'Id' => {
                         'type' => 'Str'
                       }
             },
  'NameInRequest' => {
                       'Size' => 'size',
                       'Id' => 'id'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DiskImageVolumeDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::DiskImageVolumeDescription object:

  $service_obj->Method(Att1 => { Id => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::DiskImageVolumeDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Id => Str

  The volume identifier.


=head2 Size => Int

  The size of the volume, in GiB.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
