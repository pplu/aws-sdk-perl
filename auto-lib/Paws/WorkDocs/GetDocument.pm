
package Paws::WorkDocs::GetDocument;
  use Moose;
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDocument');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents/{DocumentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::GetDocumentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetDocument - Arguments for method GetDocument on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocument on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method GetDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocument.

As an example:

  $service_obj->GetDocument(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentId => Str

The ID of the document object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocument in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

