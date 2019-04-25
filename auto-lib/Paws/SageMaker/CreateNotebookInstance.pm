
package Paws::SageMaker::CreateNotebookInstance;
  use Moose;
  has AcceleratorTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdditionalCodeRepositories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DefaultCodeRepository => (is => 'ro', isa => 'Str');
  has DirectInternetAccess => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LifecycleConfigName => (is => 'ro', isa => 'Str');
  has NotebookInstanceName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::Tag]');
  has VolumeSizeInGB => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNotebookInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateNotebookInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateNotebookInstance - Arguments for method CreateNotebookInstance on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotebookInstance on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateNotebookInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotebookInstance.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateNotebookInstanceOutput = $api . sagemaker->CreateNotebookInstance(
      InstanceType         => 'ml.t2.medium',
      NotebookInstanceName => 'MyNotebookInstanceName',
      RoleArn              => 'MyRoleArn',
      AcceleratorTypes     => [
        'ml.eia1.medium',
        ...    # values: ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge
      ],       # OPTIONAL
      AdditionalCodeRepositories => [
        'MyCodeRepositoryNameOrUrl', ...    # min: 1, max: 1024
      ],                                    # OPTIONAL
      DefaultCodeRepository => 'MyCodeRepositoryNameOrUrl',    # OPTIONAL
      DirectInternetAccess  => 'Enabled',                      # OPTIONAL
      KmsKeyId              => 'MyKmsKeyId',                   # OPTIONAL
      LifecycleConfigName => 'MyNotebookInstanceLifecycleConfigName', # OPTIONAL
      SecurityGroupIds    => [
        'MySecurityGroupId', ...                                      # max: 32
      ],                                                              # OPTIONAL
      SubnetId => 'MySubnetId',                                       # OPTIONAL
      Tags     => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],                            # OPTIONAL
      VolumeSizeInGB => 1,          # OPTIONAL
    );

    # Results:
    my $NotebookInstanceArn =
      $CreateNotebookInstanceOutput->NotebookInstanceArn;

    # Returns a L<Paws::SageMaker::CreateNotebookInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateNotebookInstance>

=head1 ATTRIBUTES


=head2 AcceleratorTypes => ArrayRef[Str|Undef]

A list of Elastic Inference (EI) instance types to associate with this
notebook instance. Currently, only one instance type can be associated
with a notebook instance. For more information, see Using Elastic
Inference in Amazon SageMaker
(http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html).



=head2 AdditionalCodeRepositories => ArrayRef[Str|Undef]

An array of up to three Git repositories to associate with the notebook
instance. These can be either the names of Git repositories stored as
resources in your account, or the URL of Git repositories in AWS
CodeCommit
(http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository. These repositories are cloned at the
same level as the default repository of your notebook instance. For
more information, see Associating Git Repositories with Amazon
SageMaker Notebook Instances
(http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html).



=head2 DefaultCodeRepository => Str

A Git repository to associate with the notebook instance as its default
code repository. This can be either the name of a Git repository stored
as a resource in your account, or the URL of a Git repository in AWS
CodeCommit
(http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository. When you open a notebook instance, it
opens in the directory that contains this repository. For more
information, see Associating Git Repositories with Amazon SageMaker
Notebook Instances
(http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html).



=head2 DirectInternetAccess => Str

Sets whether Amazon SageMaker provides internet access to the notebook
instance. If you set this to C<Disabled> this notebook instance will be
able to access resources only in your VPC, and will not be able to
connect to Amazon SageMaker training and endpoint services unless your
configure a NAT Gateway in your VPC.

For more information, see Notebook Instances Are Internet-Enabled by
Default
(http://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access).
You can set the value of this parameter to C<Disabled> only if you set
a value for the C<SubnetId> parameter.

Valid values are: C<"Enabled">, C<"Disabled">

=head2 B<REQUIRED> InstanceType => Str

The type of ML compute instance to launch for the notebook instance.

Valid values are: C<"ml.t2.medium">, C<"ml.t2.large">, C<"ml.t2.xlarge">, C<"ml.t2.2xlarge">, C<"ml.t3.medium">, C<"ml.t3.large">, C<"ml.t3.xlarge">, C<"ml.t3.2xlarge">, C<"ml.m4.xlarge">, C<"ml.m4.2xlarge">, C<"ml.m4.4xlarge">, C<"ml.m4.10xlarge">, C<"ml.m4.16xlarge">, C<"ml.m5.xlarge">, C<"ml.m5.2xlarge">, C<"ml.m5.4xlarge">, C<"ml.m5.12xlarge">, C<"ml.m5.24xlarge">, C<"ml.c4.xlarge">, C<"ml.c4.2xlarge">, C<"ml.c4.4xlarge">, C<"ml.c4.8xlarge">, C<"ml.c5.xlarge">, C<"ml.c5.2xlarge">, C<"ml.c5.4xlarge">, C<"ml.c5.9xlarge">, C<"ml.c5.18xlarge">, C<"ml.c5d.xlarge">, C<"ml.c5d.2xlarge">, C<"ml.c5d.4xlarge">, C<"ml.c5d.9xlarge">, C<"ml.c5d.18xlarge">, C<"ml.p2.xlarge">, C<"ml.p2.8xlarge">, C<"ml.p2.16xlarge">, C<"ml.p3.2xlarge">, C<"ml.p3.8xlarge">, C<"ml.p3.16xlarge">

=head2 KmsKeyId => Str

If you provide a AWS KMS key ID, Amazon SageMaker uses it to encrypt
data at rest on the ML storage volume that is attached to your notebook
instance. The KMS key you provide must be enabled. For information, see
Enabling and Disabling Keys
(http://docs.aws.amazon.com/kms/latest/developerguide/enabling-keys.html)
in the I<AWS Key Management Service Developer Guide>.



=head2 LifecycleConfigName => Str

The name of a lifecycle configuration to associate with the notebook
instance. For information about lifestyle configurations, see Step 2.1:
(Optional) Customize a Notebook Instance
(http://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).



=head2 B<REQUIRED> NotebookInstanceName => Str

The name of the new notebook instance.



=head2 B<REQUIRED> RoleArn => Str

When you send any requests to AWS resources from the notebook instance,
Amazon SageMaker assumes this role to perform tasks on your behalf. You
must grant this role necessary permissions so Amazon SageMaker can
perform these tasks. The policy must allow the Amazon SageMaker service
principal (sagemaker.amazonaws.com) permissions to assume this role.
For more information, see Amazon SageMaker Roles
(http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

To be able to pass this role to Amazon SageMaker, the caller of this
API must have the C<iam:PassRole> permission.



=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The VPC security group IDs, in the form sg-xxxxxxxx. The security
groups must be for the same VPC as specified in the subnet.



=head2 SubnetId => Str

The ID of the subnet in a VPC to which you would like to have a
connectivity from your ML compute instance.



=head2 Tags => ArrayRef[L<Paws::SageMaker::Tag>]

A list of tags to associate with the notebook instance. You can add
tags later by using the C<CreateTags> API.



=head2 VolumeSizeInGB => Int

The size, in GB, of the ML storage volume to attach to the notebook
instance. The default value is 5 GB.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotebookInstance in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

