
package Paws::CodeCommit::GetBlob;
  use Moose;
  has BlobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'blobId' , required => 1);
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBlob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeCommit::GetBlobOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetBlob - Arguments for method GetBlob on Paws::CodeCommit

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBlob on the 
AWS CodeCommit service. Use the attributes of this class
as arguments to method GetBlob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBlob.

As an example:

  $service_obj->GetBlob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlobId => Str

The ID of the blob, which is its SHA-1 pointer.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that contains the blob.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBlob in L<Paws::CodeCommit>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

