
package Paws::SageMaker::DescribeNotebookInstanceOutput;
  use Moose;
  has AcceleratorTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdditionalCodeRepositories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DefaultCodeRepository => (is => 'ro', isa => 'Str');
  has DirectInternetAccess => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NotebookInstanceArn => (is => 'ro', isa => 'Str');
  has NotebookInstanceLifecycleConfigName => (is => 'ro', isa => 'Str');
  has NotebookInstanceName => (is => 'ro', isa => 'Str');
  has NotebookInstanceStatus => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SubnetId => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
  has VolumeSizeInGB => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeNotebookInstanceOutput

=head1 ATTRIBUTES


=head2 AcceleratorTypes => ArrayRef[Str|Undef]

A list of the Elastic Inference (EI) instance types associated with
this notebook instance. Currently only one EI instance type can be
associated with a notebook instance. For more information, see Using
Elastic Inference in Amazon SageMaker
(http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html).


=head2 AdditionalCodeRepositories => ArrayRef[Str|Undef]

An array of up to three Git repositories associated with the notebook
instance. These can be either the names of Git repositories stored as
resources in your account, or the URL of Git repositories in AWS
CodeCommit
(http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository. These repositories are cloned at the
same level as the default repository of your notebook instance. For
more information, see Associating Git Repositories with Amazon
SageMaker Notebook Instances
(http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html).


=head2 CreationTime => Str

A timestamp. Use this parameter to return the time when the notebook
instance was created


=head2 DefaultCodeRepository => Str

The Git repository associated with the notebook instance as its default
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

Describes whether Amazon SageMaker provides internet access to the
notebook instance. If this value is set to I<Disabled, he notebook
instance does not have internet access, and cannot connect to Amazon
SageMaker training and endpoint services>.

For more information, see Notebook Instances Are Internet-Enabled by
Default
(http://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access).

Valid values are: C<"Enabled">, C<"Disabled">
=head2 FailureReason => Str

If status is C<Failed>, the reason it failed.


=head2 InstanceType => Str

The type of ML compute instance running on the notebook instance.

Valid values are: C<"ml.t2.medium">, C<"ml.t2.large">, C<"ml.t2.xlarge">, C<"ml.t2.2xlarge">, C<"ml.t3.medium">, C<"ml.t3.large">, C<"ml.t3.xlarge">, C<"ml.t3.2xlarge">, C<"ml.m4.xlarge">, C<"ml.m4.2xlarge">, C<"ml.m4.4xlarge">, C<"ml.m4.10xlarge">, C<"ml.m4.16xlarge">, C<"ml.m5.xlarge">, C<"ml.m5.2xlarge">, C<"ml.m5.4xlarge">, C<"ml.m5.12xlarge">, C<"ml.m5.24xlarge">, C<"ml.c4.xlarge">, C<"ml.c4.2xlarge">, C<"ml.c4.4xlarge">, C<"ml.c4.8xlarge">, C<"ml.c5.xlarge">, C<"ml.c5.2xlarge">, C<"ml.c5.4xlarge">, C<"ml.c5.9xlarge">, C<"ml.c5.18xlarge">, C<"ml.c5d.xlarge">, C<"ml.c5d.2xlarge">, C<"ml.c5d.4xlarge">, C<"ml.c5d.9xlarge">, C<"ml.c5d.18xlarge">, C<"ml.p2.xlarge">, C<"ml.p2.8xlarge">, C<"ml.p2.16xlarge">, C<"ml.p3.2xlarge">, C<"ml.p3.8xlarge">, C<"ml.p3.16xlarge">
=head2 KmsKeyId => Str

The AWS KMS key ID Amazon SageMaker uses to encrypt data when storing
it on the ML storage volume attached to the instance.


=head2 LastModifiedTime => Str

A timestamp. Use this parameter to retrieve the time when the notebook
instance was last modified.


=head2 NetworkInterfaceId => Str

The network interface IDs that Amazon SageMaker created at the time of
creating the instance.


=head2 NotebookInstanceArn => Str

The Amazon Resource Name (ARN) of the notebook instance.


=head2 NotebookInstanceLifecycleConfigName => Str

Returns the name of a notebook instance lifecycle configuration.

For information about notebook instance lifestyle configurations, see
Step 2.1: (Optional) Customize a Notebook Instance
(http://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html)


=head2 NotebookInstanceName => Str

The name of the Amazon SageMaker notebook instance.


=head2 NotebookInstanceStatus => Str

The status of the notebook instance.

Valid values are: C<"Pending">, C<"InService">, C<"Stopping">, C<"Stopped">, C<"Failed">, C<"Deleting">, C<"Updating">
=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role associated with the
instance.


=head2 SecurityGroups => ArrayRef[Str|Undef]

The IDs of the VPC security groups.


=head2 SubnetId => Str

The ID of the VPC subnet.


=head2 Url => Str

The URL that you use to connect to the Jupyter notebook that is running
in your notebook instance.


=head2 VolumeSizeInGB => Int

The size, in GB, of the ML storage volume attached to the notebook
instance.


=head2 _request_id => Str


=cut

1;