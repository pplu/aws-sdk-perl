
package Paws::WorkSpaces::CreateWorkspaceBundle;
  use Moose;
  has BundleDescription => (is => 'ro', isa => 'Str', required => 1);
  has BundleName => (is => 'ro', isa => 'Str', required => 1);
  has ComputeType => (is => 'ro', isa => 'Paws::WorkSpaces::ComputeType', required => 1);
  has ImageId => (is => 'ro', isa => 'Str', required => 1);
  has RootStorage => (is => 'ro', isa => 'Paws::WorkSpaces::RootStorage');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');
  has UserStorage => (is => 'ro', isa => 'Paws::WorkSpaces::UserStorage', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWorkspaceBundle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateWorkspaceBundleResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateWorkspaceBundle - Arguments for method CreateWorkspaceBundle on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWorkspaceBundle on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateWorkspaceBundle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWorkspaceBundle.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateWorkspaceBundleResult = $workspaces->CreateWorkspaceBundle(
      BundleDescription => 'MyWorkspaceBundleDescription',
      BundleName        => 'MyWorkspaceBundleName',
      ComputeType       => {
        Name => 'VALUE'
        , # values: VALUE, STANDARD, PERFORMANCE, POWER, GRAPHICS, POWERPRO, GRAPHICSPRO; OPTIONAL
      },
      ImageId     => 'MyWorkspaceImageId',
      UserStorage => {
        Capacity => 'MyNonEmptyString',    # min: 1; OPTIONAL
      },
      RootStorage => {
        Capacity => 'MyNonEmptyString',    # min: 1; OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $WorkspaceBundle = $CreateWorkspaceBundleResult->WorkspaceBundle;

    # Returns a L<Paws::WorkSpaces::CreateWorkspaceBundleResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateWorkspaceBundle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BundleDescription => Str

The description of the bundle.



=head2 B<REQUIRED> BundleName => Str

The name of the bundle.



=head2 B<REQUIRED> ComputeType => L<Paws::WorkSpaces::ComputeType>





=head2 B<REQUIRED> ImageId => Str

The identifier of the image that is used to create the bundle.



=head2 RootStorage => L<Paws::WorkSpaces::RootStorage>





=head2 Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]

The tags associated with the bundle.

To add tags at the same time that you're creating the bundle, you must
create an IAM policy that grants your IAM user permissions to use
C<workspaces:CreateTags>.



=head2 B<REQUIRED> UserStorage => L<Paws::WorkSpaces::UserStorage>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWorkspaceBundle in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

