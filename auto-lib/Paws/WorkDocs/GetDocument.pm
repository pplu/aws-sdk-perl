
package Paws::WorkDocs::GetDocument;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId', required => 1);
  has IncludeCustomMetadata => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeCustomMetadata');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDocument');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents/{DocumentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::GetDocumentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocument - Arguments for method GetDocument on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocument on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method GetDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocument.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $GetDocumentResponse = $workdocs->GetDocument(
      DocumentId            => 'MyResourceIdType',
      AuthenticationToken   => 'MyAuthenticationHeaderType',    # OPTIONAL
      IncludeCustomMetadata => 1,                               # OPTIONAL
    );

    # Results:
    my $CustomMetadata = $GetDocumentResponse->CustomMetadata;
    my $Metadata       = $GetDocumentResponse->Metadata;

    # Returns a L<Paws::WorkDocs::GetDocumentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/GetDocument>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 IncludeCustomMetadata => Bool

Set this to C<TRUE> to include custom metadata in the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocument in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

