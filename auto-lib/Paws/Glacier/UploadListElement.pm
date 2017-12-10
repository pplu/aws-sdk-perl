package Paws::Glacier::UploadListElement;
  use Moose;
  has ArchiveDescription => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has MultipartUploadId => (is => 'ro', isa => 'Str');
  has PartSizeInBytes => (is => 'ro', isa => 'Int');
  has VaultARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::UploadListElement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::UploadListElement object:

  $service_obj->Method(Att1 => { ArchiveDescription => $value, ..., VaultARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::UploadListElement object:

  $result = $service_obj->Method(...);
  $result->Att1->ArchiveDescription

=head1 DESCRIPTION

A list of in-progress multipart uploads for a vault.

=head1 ATTRIBUTES


=head2 ArchiveDescription => Str

  The description of the archive that was specified in the Initiate
Multipart Upload request.


=head2 CreationDate => Str

  The UTC time at which the multipart upload was initiated.


=head2 MultipartUploadId => Str

  The ID of a multipart upload.


=head2 PartSizeInBytes => Int

  The part size, in bytes, specified in the Initiate Multipart Upload
request. This is the size of all the parts in the upload except the
last part, which may be smaller than this size.


=head2 VaultARN => Str

  The Amazon Resource Name (ARN) of the vault that contains the archive.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

