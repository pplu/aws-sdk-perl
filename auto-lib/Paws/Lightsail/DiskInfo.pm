# Generated from default/object.tt
package Paws::Lightsail::DiskInfo;
  use Moo;
  use Types::Standard qw/Bool Str Int/;
  use Paws::Lightsail::Types qw//;
  has IsSystemDisk => (is => 'ro', isa => Bool);
  has Name => (is => 'ro', isa => Str);
  has Path => (is => 'ro', isa => Str);
  has SizeInGb => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsSystemDisk' => {
                                   'type' => 'Bool'
                                 },
               'Name' => {
                           'type' => 'Str'
                         },
               'SizeInGb' => {
                               'type' => 'Int'
                             },
               'Path' => {
                           'type' => 'Str'
                         }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'IsSystemDisk' => 'isSystemDisk',
                       'SizeInGb' => 'sizeInGb',
                       'Path' => 'path'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DiskInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::DiskInfo object:

  $service_obj->Method(Att1 => { IsSystemDisk => $value, ..., SizeInGb => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::DiskInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->IsSystemDisk

=head1 DESCRIPTION

Describes a disk.

=head1 ATTRIBUTES


=head2 IsSystemDisk => Bool

  A Boolean value indicating whether this disk is a system disk (has an
operating system loaded on it).


=head2 Name => Str

  The disk name.


=head2 Path => Str

  The disk path.


=head2 SizeInGb => Int

  The size of the disk in GB (e.g., C<32>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

