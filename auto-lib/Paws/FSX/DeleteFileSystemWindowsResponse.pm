package Paws::FSX::DeleteFileSystemWindowsResponse;
  use Moose;
  has FinalBackupId => (is => 'ro', isa => 'Str');
  has FinalBackupTags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteFileSystemWindowsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::DeleteFileSystemWindowsResponse object:

  $service_obj->Method(Att1 => { FinalBackupId => $value, ..., FinalBackupTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::DeleteFileSystemWindowsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->FinalBackupId

=head1 DESCRIPTION

The response object for the Microsoft Windows file system used in the
C<DeleteFileSystem> operation.

=head1 ATTRIBUTES


=head2 FinalBackupId => Str

  The ID of the final backup for this file system.


=head2 FinalBackupTags => ArrayRef[L<Paws::FSX::Tag>]

  The set of tags applied to the final backup.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

