# Generated from default/object.tt
package Paws::FSX::DeleteFileSystemWindowsConfiguration;
  use Moo;
  use Types::Standard qw/ArrayRef Bool/;
  use Paws::FSX::Types qw/FSX_Tag/;
  has FinalBackupTags => (is => 'ro', isa => ArrayRef[FSX_Tag]);
  has SkipFinalBackup => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SkipFinalBackup' => {
                                      'type' => 'Bool'
                                    },
               'FinalBackupTags' => {
                                      'class' => 'Paws::FSX::Tag',
                                      'type' => 'ArrayRef[FSX_Tag]'
                                    }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DeleteFileSystemWindowsConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::DeleteFileSystemWindowsConfiguration object:

  $service_obj->Method(Att1 => { FinalBackupTags => $value, ..., SkipFinalBackup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::DeleteFileSystemWindowsConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->FinalBackupTags

=head1 DESCRIPTION

The configuration object for the Microsoft Windows file system used in
the C<DeleteFileSystem> operation.

=head1 ATTRIBUTES


=head2 FinalBackupTags => ArrayRef[FSX_Tag]

  A set of tags for your final backup.


=head2 SkipFinalBackup => Bool

  By default, Amazon FSx for Windows takes a final backup on your behalf
when the C<DeleteFileSystem> operation is invoked. Doing this helps
protect you from data loss, and we highly recommend taking the final
backup. If you want to skip this backup, use this flag to do so.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

