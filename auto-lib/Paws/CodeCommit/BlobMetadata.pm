package Paws::CodeCommit::BlobMetadata;
  use Moose;
  has BlobId => (is => 'ro', isa => 'Str', request_name => 'blobId', traits => ['NameInRequest']);
  has Mode => (is => 'ro', isa => 'Str', request_name => 'mode', traits => ['NameInRequest']);
  has Path => (is => 'ro', isa => 'Str', request_name => 'path', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::BlobMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeCommit::BlobMetadata object:

  $service_obj->Method(Att1 => { BlobId => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeCommit::BlobMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->BlobId

=head1 DESCRIPTION

Returns information about a specific Git blob object.

=head1 ATTRIBUTES


=head2 BlobId => Str

  The full ID of the blob.


=head2 Mode => Str

  The file mode permissions of the blob. File mode permission codes
include:

=over

=item *

C<100644> indicates read/write

=item *

C<100755> indicates read/write/execute

=item *

C<160000> indicates a submodule

=item *

C<120000> indicates a symlink

=back



=head2 Path => Str

  The path to the blob and any associated file name, if any.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

