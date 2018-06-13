
package Paws::WorkDocs::UpdateFolder;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has ParentFolderId => (is => 'ro', isa => 'Str');
  has ResourceState => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFolder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/folders/{FolderId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::UpdateFolder - Arguments for method UpdateFolder on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFolder on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method UpdateFolder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFolder.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    $workdocs->UpdateFolder(
      FolderId            => 'MyResourceIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Name                => 'MyResourceNameType',            # OPTIONAL
      ParentFolderId      => 'MyResourceIdType',              # OPTIONAL
      ResourceState       => 'ACTIVE',                        # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/UpdateFolder>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 B<REQUIRED> FolderId => Str

The ID of the folder.



=head2 Name => Str

The name of the folder.



=head2 ParentFolderId => Str

The ID of the parent folder.



=head2 ResourceState => Str

The resource state of the folder. Only ACTIVE and RECYCLED are accepted
values from the API.

Valid values are: C<"ACTIVE">, C<"RESTORING">, C<"RECYCLING">, C<"RECYCLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFolder in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

