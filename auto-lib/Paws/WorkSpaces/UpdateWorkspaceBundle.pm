
package Paws::WorkSpaces::UpdateWorkspaceBundle;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str');
  has ImageId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkspaceBundle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::UpdateWorkspaceBundleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::UpdateWorkspaceBundle - Arguments for method UpdateWorkspaceBundle on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkspaceBundle on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method UpdateWorkspaceBundle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkspaceBundle.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $UpdateWorkspaceBundleResult = $workspaces->UpdateWorkspaceBundle(
      BundleId => 'MyBundleId',            # OPTIONAL
      ImageId  => 'MyWorkspaceImageId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/UpdateWorkspaceBundle>

=head1 ATTRIBUTES


=head2 BundleId => Str

The identifier of the bundle.



=head2 ImageId => Str

The identifier of the image.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkspaceBundle in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

