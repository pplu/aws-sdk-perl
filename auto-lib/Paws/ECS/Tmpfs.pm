package Paws::ECS::Tmpfs;
  use Moose;
  has ContainerPath => (is => 'ro', isa => 'Str', request_name => 'containerPath', traits => ['NameInRequest'], required => 1);
  has MountOptions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'mountOptions', traits => ['NameInRequest']);
  has Size => (is => 'ro', isa => 'Int', request_name => 'size', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::Tmpfs

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::Tmpfs object:

  $service_obj->Method(Att1 => { ContainerPath => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::Tmpfs object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerPath

=head1 DESCRIPTION

The container path, mount options, and size of the tmpfs mount.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ContainerPath => Str

  The absolute file path where the tmpfs volume is to be mounted.


=head2 MountOptions => ArrayRef[Str|Undef]

  The list of tmpfs volume mount options.

Valid values: C<"defaults" | "ro" | "rw" | "suid" | "nosuid" | "dev" |
"nodev" | "exec" | "noexec" | "sync" | "async" | "dirsync" | "remount"
| "mand" | "nomand" | "atime" | "noatime" | "diratime" | "nodiratime" |
"bind" | "rbind" | "unbindable" | "runbindable" | "private" |
"rprivate" | "shared" | "rshared" | "slave" | "rslave" | "relatime" |
"norelatime" | "strictatime" | "nostrictatime" | "mode" | "uid" | "gid"
| "nr_inodes" | "nr_blocks" | "mpol">


=head2 B<REQUIRED> Size => Int

  The size (in MiB) of the tmpfs volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

