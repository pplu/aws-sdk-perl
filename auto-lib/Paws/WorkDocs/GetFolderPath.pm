
package Paws::WorkDocs::GetFolderPath;
  use Moose;
  has AuthenticationToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'Authentication');
  has Fields => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'fields');
  has FolderId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FolderId', required => 1);
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFolderPath');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/folders/{FolderId}/path');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkDocs::GetFolderPathResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::GetFolderPath - Arguments for method GetFolderPath on L<Paws::WorkDocs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFolderPath on the
L<Amazon WorkDocs|Paws::WorkDocs> service. Use the attributes of this class
as arguments to method GetFolderPath.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFolderPath.

=head1 SYNOPSIS

    my $workdocs = Paws->service('WorkDocs');
    my $GetFolderPathResponse = $workdocs->GetFolderPath(
      FolderId            => 'MyIdType',
      AuthenticationToken => 'MyAuthenticationHeaderType',    # OPTIONAL
      Fields              => 'MyFieldNamesType',              # OPTIONAL
      Limit               => 1,                               # OPTIONAL
      Marker              => 'MyPageMarkerType',              # OPTIONAL
    );

    # Results:
    my $Path = $GetFolderPathResponse->Path;

    # Returns a L<Paws::WorkDocs::GetFolderPathResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workdocs/GetFolderPath>

=head1 ATTRIBUTES


=head2 AuthenticationToken => Str

Amazon WorkDocs authentication token. Do not set this field when using
administrative API actions, as in accessing the API using AWS
credentials.



=head2 Fields => Str

A comma-separated list of values. Specify "NAME" to include the names
of the parent folders.



=head2 B<REQUIRED> FolderId => Str

The ID of the folder.



=head2 Limit => Int

The maximum number of levels in the hierarchy to return.



=head2 Marker => Str

This value is not supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFolderPath in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

