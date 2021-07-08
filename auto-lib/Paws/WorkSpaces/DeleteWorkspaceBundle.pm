
package Paws::WorkSpaces::DeleteWorkspaceBundle;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWorkspaceBundle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::DeleteWorkspaceBundleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DeleteWorkspaceBundle - Arguments for method DeleteWorkspaceBundle on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWorkspaceBundle on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method DeleteWorkspaceBundle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWorkspaceBundle.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $DeleteWorkspaceBundleResult = $workspaces->DeleteWorkspaceBundle(
      BundleId => 'MyBundleId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/DeleteWorkspaceBundle>

=head1 ATTRIBUTES


=head2 BundleId => Str

The identifier of the bundle.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWorkspaceBundle in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

