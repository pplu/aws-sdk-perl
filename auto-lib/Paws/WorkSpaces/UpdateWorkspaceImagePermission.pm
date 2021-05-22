
package Paws::WorkSpaces::UpdateWorkspaceImagePermission;
  use Moose;
  has AllowCopyImage => (is => 'ro', isa => 'Bool', required => 1);
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has SharedAccountId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkspaceImagePermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::UpdateWorkspaceImagePermissionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::UpdateWorkspaceImagePermission - Arguments for method UpdateWorkspaceImagePermission on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkspaceImagePermission on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method UpdateWorkspaceImagePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkspaceImagePermission.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $UpdateWorkspaceImagePermissionResult =
      $workspaces->UpdateWorkspaceImagePermission(
      AllowCopyImage  => 1,
      ImageId         => 'MyWorkspaceImageId',
      SharedAccountId => 'MyAwsAccount',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/UpdateWorkspaceImagePermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllowCopyImage => Bool

The permission to copy the image. This permission can be revoked only
after an image has been shared.



=head2 B<REQUIRED> ImageId => Str

The identifier of the image.



=head2 B<REQUIRED> SharedAccountId => Str

The identifier of the AWS account to share or unshare the image with.

Before sharing the image, confirm that you are sharing to the correct
AWS account ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkspaceImagePermission in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

