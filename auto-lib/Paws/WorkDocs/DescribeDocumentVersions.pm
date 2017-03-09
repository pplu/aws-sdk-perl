
package Paws::WorkDocs::DescribeDocumentVersions;
  use Moose;
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId' , required => 1);
  has Fields => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'fields' );
  has Include => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'include' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit' );
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeDocumentVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents/{DocumentId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::DescribeDocumentVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeDocumentVersions - Arguments for method DescribeDocumentVersions on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeDocumentVersions on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method DescribeDocumentVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeDocumentVersions.

As an example:

  $service_obj->DescribeDocumentVersions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 Fields => Str

Specify "SOURCE" to include initialized versions and a URL for the
source document.



=head2 Include => Str

A comma-separated list of values. Specify "INITIALIZED" to include
incomplete versions.



=head2 Limit => Int

The maximum number of versions to return with this call.



=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeDocumentVersions in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

