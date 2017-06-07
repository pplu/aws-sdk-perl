
package Paws::WorkDocs::InitiateDocumentVersionUpload;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication' );
  has ContentCreatedTimestamp => (is => 'ro', isa => 'Str');
  has ContentModifiedTimestamp => (is => 'ro', isa => 'Str');
  has ContentType => (is => 'ro', isa => 'Str');
  has DocumentSizeInBytes => (is => 'ro', isa => 'Int');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has ParentFolderId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitiateDocumentVersionUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::InitiateDocumentVersionUploadResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::InitiateDocumentVersionUpload - Arguments for method InitiateDocumentVersionUpload on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateDocumentVersionUpload on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method InitiateDocumentVersionUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitiateDocumentVersionUpload.

As an example:

  $service_obj->InitiateDocumentVersionUpload(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. This field should not be set when
using administrative API actions, as in accessing the API using AWS
credentials.



=head2 ContentCreatedTimestamp => Str

The time stamp when the content of the document was originally created.



=head2 ContentModifiedTimestamp => Str

The time stamp when the content of the document was modified.



=head2 ContentType => Str

The content type of the document.



=head2 DocumentSizeInBytes => Int

The size of the document, in bytes.



=head2 Id => Str

The ID of the document.



=head2 Name => Str

The name of the document.



=head2 B<REQUIRED> ParentFolderId => Str

The ID of the parent folder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitiateDocumentVersionUpload in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

