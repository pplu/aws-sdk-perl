
package Paws::WorkDocs::CreateCustomMetadata;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has CustomMetadata => (is => 'ro', isa => 'Paws::WorkDocs::CustomMetadataMap', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ResourceId', required => 1);
  has VersionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'versionid');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCustomMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/resources/{ResourceId}/customMetadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::CreateCustomMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateCustomMetadata - Arguments for method CreateCustomMetadata on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomMetadata on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method CreateCustomMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomMetadata.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $CreateCustomMetadataResponse = $workdocs->CreateCustomMetadata(
      CustomMetadata => {
        'MyCustomMetadataKeyType' => 'MyCustomMetadataValueType'
        ,    # key: min: 1, max: 56, value: min: 1, max: 256
      },
      ResourceId          => 'MyResourceIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      VersionId           => 'MyDocumentVersionIdType',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/CreateCustomMetadata>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> CustomMetadata => L<Paws::WorkDocs::CustomMetadataMap>

Custom metadata in the form of name-value pairs.



=head2 B<REQUIRED> ResourceId => Str

The ID of the resource.



=head2 VersionId => Str

The ID of the version, if the custom metadata is being added to a
document version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomMetadata in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

