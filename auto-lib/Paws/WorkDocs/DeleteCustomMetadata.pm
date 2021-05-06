
package Paws::WorkDocs::DeleteCustomMetadata;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has DeleteAll => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'deleteAll');
  has Keys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'keys');
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceId', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'versionId');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/resources/{ResourceId}/customMetadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::DeleteCustomMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DeleteCustomMetadata - Arguments for method DeleteCustomMetadata on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomMetadata on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method DeleteCustomMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomMetadata.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $DeleteCustomMetadataResponse = $workdocs->DeleteCustomMetadata(
      ResourceId          => 'MyResourceIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      DeleteAll           => 1,                               # OPTIONAL
      Keys                => [
        'MyCustomMetadataKeyType', ...                        # min: 1, max: 56
      ],                                                      # OPTIONAL
      VersionId => 'MyDocumentVersionIdType',                 # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/DeleteCustomMetadata>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 DeleteAll => Bool

Flag to indicate removal of all custom metadata properties from the
specified resource.



=head2 Keys => ArrayRef[Str|Undef]

List of properties to remove.



=head2 B<REQUIRED> ResourceId => Str

The ID of the resource, either a document or folder.



=head2 VersionId => Str

The ID of the version, if the custom metadata is being deleted from a
document version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomMetadata in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

