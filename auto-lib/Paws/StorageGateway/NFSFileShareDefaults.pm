package Paws::StorageGateway::NFSFileShareDefaults;
  use Moose;
  has DirectoryMode => (is => 'ro', isa => 'Str');
  has FileMode => (is => 'ro', isa => 'Str');
  has GroupId => (is => 'ro', isa => 'Int');
  has OwnerId => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::NFSFileShareDefaults

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::NFSFileShareDefaults object:

  $service_obj->Method(Att1 => { DirectoryMode => $value, ..., OwnerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::NFSFileShareDefaults object:

  $result = $service_obj->Method(...);
  $result->Att1->DirectoryMode

=head1 DESCRIPTION

Describes Network File System (NFS) file share default values. Files
and folders stored as Amazon S3 objects in S3 buckets don't, by
default, have Unix file permissions assigned to them. Upon discovery in
an S3 bucket by Storage Gateway, the S3 objects that represent files
and folders are assigned these default Unix permissions. This operation
is only supported for file gateways.

=head1 ATTRIBUTES


=head2 DirectoryMode => Str

  The Unix directory mode in the form "nnnn". For example, "0666"
represents the default access mode for all directories inside the file
share. The default value is 0777.


=head2 FileMode => Str

  The Unix file mode in the form "nnnn". For example, "0666" represents
the default file mode inside the file share. The default value is 0666.


=head2 GroupId => Int

  The default group ID for the file share (unless the files have another
group ID specified). The default value is nfsnobody.


=head2 OwnerId => Int

  The default owner ID for files in the file share (unless the files have
another owner ID specified). The default value is nfsnobody.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

