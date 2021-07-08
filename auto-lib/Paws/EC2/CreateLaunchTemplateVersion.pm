
package Paws::EC2::CreateLaunchTemplateVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has LaunchTemplateData => (is => 'ro', isa => 'Paws::EC2::RequestLaunchTemplateData', required => 1);
  has LaunchTemplateId => (is => 'ro', isa => 'Str');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');
  has SourceVersion => (is => 'ro', isa => 'Str');
  has VersionDescription => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLaunchTemplateVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateLaunchTemplateVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLaunchTemplateVersion - Arguments for method CreateLaunchTemplateVersion on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLaunchTemplateVersion on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateLaunchTemplateVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLaunchTemplateVersion.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
  # To create a launch template version
  # This example creates a new launch template version based on version 1 of the
  # specified launch template and specifies a different AMI ID.
    my $CreateLaunchTemplateVersionResult = $ec2->CreateLaunchTemplateVersion(
      'LaunchTemplateData' => {
        'ImageId' => 'ami-c998b6b2'
      },
      'LaunchTemplateId'   => 'lt-0abcd290751193123',
      'SourceVersion'      => 1,
      'VersionDescription' => 'WebVersion2'
    );

    # Results:
    my $LaunchTemplateVersion =
      $CreateLaunchTemplateVersionResult->LaunchTemplateVersion;

    # Returns a L<Paws::EC2::CreateLaunchTemplateVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateLaunchTemplateVersion>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).

Constraint: Maximum 128 ASCII characters.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> LaunchTemplateData => L<Paws::EC2::RequestLaunchTemplateData>

The information for the launch template.



=head2 LaunchTemplateId => Str

The ID of the launch template. You must specify either the launch
template ID or launch template name in the request.



=head2 LaunchTemplateName => Str

The name of the launch template. You must specify either the launch
template ID or launch template name in the request.



=head2 SourceVersion => Str

The version number of the launch template version on which to base the
new version. The new version inherits the same launch parameters as the
source version, except for parameters that you specify in
C<LaunchTemplateData>. Snapshots applied to the block device mapping
are ignored when creating a new version unless they are explicitly
included.



=head2 VersionDescription => Str

A description for the version of the launch template.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLaunchTemplateVersion in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

