
package Paws::WorkDocs::InitiateDocumentVersionUpload;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
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
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::InitiateDocumentVersionUpload - Arguments for method InitiateDocumentVersionUpload on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitiateDocumentVersionUpload on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method InitiateDocumentVersionUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitiateDocumentVersionUpload.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $InitiateDocumentVersionUploadResponse =
      $workdocs->InitiateDocumentVersionUpload(
      ParentFolderId           => 'MyResourceIdType',
      AuthenticationToken      => 'MyAuthenticationHeaderType',    # OPTIONAL
      ContentCreatedTimestamp  => '1970-01-01T01:00:00',           # OPTIONAL
      ContentModifiedTimestamp => '1970-01-01T01:00:00',           # OPTIONAL
      ContentType              => 'MyDocumentContentType',         # OPTIONAL
      DocumentSizeInBytes      => 1,                               # OPTIONAL
      Id                       => 'MyResourceIdType',              # OPTIONAL
      Name                     => 'MyResourceNameType',            # OPTIONAL
      );

    # Results:
    my $Metadata       = $InitiateDocumentVersionUploadResponse->Metadata;
    my $UploadMetadata = $InitiateDocumentVersionUploadResponse->UploadMetadata;

    # Returns a L<Paws::WorkDocs::InitiateDocumentVersionUploadResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/InitiateDocumentVersionUpload>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 ContentCreatedTimestamp => Str

The timestamp when the content of the document was originally created.



=head2 ContentModifiedTimestamp => Str

The timestamp when the content of the document was modified.



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

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

