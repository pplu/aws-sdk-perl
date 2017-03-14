
package Paws::WorkDocs::AbortDocumentVersionUpload;
  use Moose;
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId' , required => 1);
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VersionId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AbortDocumentVersionUpload');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents/{DocumentId}/versions/{VersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::AbortDocumentVersionUpload - Arguments for method AbortDocumentVersionUpload on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method AbortDocumentVersionUpload on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method AbortDocumentVersionUpload.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AbortDocumentVersionUpload.

As an example:

  $service_obj->AbortDocumentVersionUpload(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 B<REQUIRED> VersionId => Str

The ID of the version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AbortDocumentVersionUpload in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

