
package Paws::WorkDocs::CreateFolder;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has Name => (is => 'ro', isa => 'Str');
  has ParentFolderId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFolder');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/folders');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::CreateFolderResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::CreateFolder - Arguments for method CreateFolder on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFolder on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method CreateFolder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFolder.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $CreateFolderResponse = $workdocs->CreateFolder(
      ParentFolderId      => 'MyResourceIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Name                => 'MyResourceNameType',            # OPTIONAL
    );

    # Results:
    my $Metadata = $CreateFolderResponse->Metadata;

    # Returns a L<Paws::WorkDocs::CreateFolderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/CreateFolder>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 Name => Str

The name of the new folder.



=head2 B<REQUIRED> ParentFolderId => Str

The ID of the parent folder.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFolder in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

