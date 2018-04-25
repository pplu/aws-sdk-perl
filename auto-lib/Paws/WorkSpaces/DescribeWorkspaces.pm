
package Paws::WorkSpaces::DescribeWorkspaces;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
  has WorkspaceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWorkspaces');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DescribeWorkspacesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaces - Arguments for method DescribeWorkspaces on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWorkspaces on the 
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DescribeWorkspaces.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWorkspaces.

As an example:

  $service_obj->DescribeWorkspaces(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 BundleId => Str

The ID of the bundle. All WorkSpaces that are created from this bundle
are retrieved. This parameter cannot be combined with any other filter.



=head2 DirectoryId => Str

The ID of the directory. In addition, you can optionally specify a
specific directory user (see C<UserName>). This parameter cannot be
combined with any other filter.



=head2 Limit => Int

The maximum number of items to return.



=head2 NextToken => Str

The token for the next set of results. (You received this token from a
previous call.)



=head2 UserName => Str

The name of the directory user. You must specify this parameter with
C<DirectoryId>.



=head2 WorkspaceIds => ArrayRef[Str|Undef]

The IDs of the WorkSpaces. This parameter cannot be combined with any
other filter.

Because the CreateWorkspaces operation is asynchronous, the identifier
it returns is not immediately available. If you immediately call
DescribeWorkspaces with this identifier, no information is returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWorkspaces in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

