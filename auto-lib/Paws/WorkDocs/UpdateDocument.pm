
package Paws::WorkDocs::UpdateDocument;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has DocumentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DocumentId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ParentFolderId => (is => 'ro', isa => 'Str');
  has ResourceState => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDocument');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/documents/{DocumentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::UpdateDocument - Arguments for method UpdateDocument on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDocument on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method UpdateDocument.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDocument.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    $workdocs->UpdateDocument(
      DocumentId          => 'MyResourceIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Name                => 'MyResourceNameType',            # OPTIONAL
      ParentFolderId      => 'MyResourceIdType',              # OPTIONAL
      ResourceState       => 'ACTIVE',                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/UpdateDocument>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> DocumentId => Str

The ID of the document.



=head2 Name => Str

The name of the document.



=head2 ParentFolderId => Str

The ID of the parent folder.



=head2 ResourceState => Str

The resource state of the document. Only ACTIVE and RECYCLED are
supported.

Valid values are: C<"ACTIVE">, C<"RESTORING">, C<"RECYCLING">, C<"RECYCLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDocument in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

