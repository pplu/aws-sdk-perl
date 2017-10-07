
package Paws::WorkDocs::GetDocumentVersion;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication' );
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId' , required => 1);
  has Fields => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'fields' );
  has IncludeCustomMetadata => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'includeCustomMetadata' );
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VersionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDocumentVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents/{DocumentId}/versions/{VersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::GetDocumentVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocumentVersion - Arguments for method GetDocumentVersion on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocumentVersion on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method GetDocumentVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocumentVersion.

As an example:

  $service_obj->GetDocumentVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. This field should not be set when
using administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 Fields => Str

A comma-separated list of values. Specify "SOURCE" to include a URL for
the source document.



=head2 IncludeCustomMetadata => Bool

Set this to TRUE to include custom metadata in the response.



=head2 B<REQUIRED> VersionId => Str

The version ID of the document.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocumentVersion in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

