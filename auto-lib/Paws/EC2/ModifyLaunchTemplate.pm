
package Paws::EC2::ModifyLaunchTemplate;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DefaultVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'SetDefaultVersion' );
  has DryRun => (is => 'ro', isa => 'Bool');
  has LaunchTemplateId => (is => 'ro', isa => 'Str');
  has LaunchTemplateName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyLaunchTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyLaunchTemplateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyLaunchTemplate - Arguments for method ModifyLaunchTemplate on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyLaunchTemplate on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyLaunchTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyLaunchTemplate.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyLaunchTemplateResult = $ec2->ModifyLaunchTemplate(
      ClientToken        => 'MyString',                # OPTIONAL
      DefaultVersion     => 'MyString',                # OPTIONAL
      DryRun             => 1,                         # OPTIONAL
      LaunchTemplateId   => 'MyString',                # OPTIONAL
      LaunchTemplateName => 'MyLaunchTemplateName',    # OPTIONAL
    );

    # Results:
    my $LaunchTemplate = $ModifyLaunchTemplateResult->LaunchTemplate;

    # Returns a L<Paws::EC2::ModifyLaunchTemplateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyLaunchTemplate>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).



=head2 DefaultVersion => Str

The version number of the launch template to set as the default
version.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 LaunchTemplateId => Str

The ID of the launch template. You must specify either the launch
template ID or launch template name in the request.



=head2 LaunchTemplateName => Str

The name of the launch template. You must specify either the launch
template ID or launch template name in the request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyLaunchTemplate in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

