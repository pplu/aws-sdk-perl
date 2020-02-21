package Paws::EFS::CreationInfo;
  use Moose;
  has OwnerGid => (is => 'ro', isa => 'Int', required => 1);
  has OwnerUid => (is => 'ro', isa => 'Int', required => 1);
  has Permissions => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EFS::CreationInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EFS::CreationInfo object:

  $service_obj->Method(Att1 => { OwnerGid => $value, ..., Permissions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EFS::CreationInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->OwnerGid

=head1 DESCRIPTION

Required if the C<RootDirectory> E<gt> C<Path> specified does not
exist. Specifies the POSIX IDs and permissions to apply to the access
point's C<RootDirectory> E<gt> C<Path>. If the access point root
directory does not exist, EFS creates it with these settings when a
client connects to the access point. When specifying C<CreationInfo>,
you must include values for all properties.

If you do not provide C<CreationInfo> and the specified
C<RootDirectory> does not exist, attempts to mount the file system
using the access point will fail.

=head1 ATTRIBUTES


=head2 B<REQUIRED> OwnerGid => Int

  Specifies the POSIX group ID to apply to the C<RootDirectory>. Accepts
values from 0 to 2^32 (4294967295).


=head2 B<REQUIRED> OwnerUid => Int

  Specifies the POSIX user ID to apply to the C<RootDirectory>. Accepts
values from 0 to 2^32 (4294967295).


=head2 B<REQUIRED> Permissions => Str

  Specifies the POSIX permissions to apply to the C<RootDirectory>, in
the format of an octal number representing the file's mode bits.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EFS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

