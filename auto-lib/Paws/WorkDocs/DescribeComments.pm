
package Paws::WorkDocs::DescribeComments;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId', required => 1);
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'VersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeComments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents/{DocumentId}/versions/{VersionId}/comments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::DescribeCommentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeComments - Arguments for method DescribeComments on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeComments on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method DescribeComments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeComments.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $DescribeCommentsResponse = $workdocs->DescribeComments(
      DocumentId          => 'MyResourceIdType',
      VersionId           => 'MyDocumentVersionIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Limit               => 1,                               # OPTIONAL
      Marker              => 'MyMarkerType',                  # OPTIONAL
    );

    # Results:
    my $Comments = $DescribeCommentsResponse->Comments;
    my $Marker   = $DescribeCommentsResponse->Marker;

    # Returns a L<Paws::WorkDocs::DescribeCommentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/DescribeComments>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 Limit => Int

The maximum number of items to return.



=head2 Marker => Str

The marker for the next set of results. This marker was received from a
previous call.



=head2 B<REQUIRED> VersionId => Str

The ID of the document version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeComments in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

