
package Paws::WorkDocs::AbortDocumentVersionUpload;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AbortDocumentVersionUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents/{DocumentId}/versions/{VersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::AbortDocumentVersionUpload - Arguments for method AbortDocumentVersionUpload on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AbortDocumentVersionUpload on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method AbortDocumentVersionUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AbortDocumentVersionUpload.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    $workdocs->AbortDocumentVersionUpload(
      DocumentId          => 'MyResourceIdType',
      VersionId           => 'MyDocumentVersionIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/AbortDocumentVersionUpload>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 B<REQUIRED> VersionId => Str

The ID of the version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AbortDocumentVersionUpload in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

