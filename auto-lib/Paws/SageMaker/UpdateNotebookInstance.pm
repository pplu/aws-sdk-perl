
package Paws::SageMaker::UpdateNotebookInstance;
  use Moose;
  has AcceleratorTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AdditionalCodeRepositories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DefaultCodeRepository => (is => 'ro', isa => 'Str');
  has DisassociateAcceleratorTypes => (is => 'ro', isa => 'Bool');
  has DisassociateAdditionalCodeRepositories => (is => 'ro', isa => 'Bool');
  has DisassociateDefaultCodeRepository => (is => 'ro', isa => 'Bool');
  has DisassociateLifecycleConfig => (is => 'ro', isa => 'Bool');
  has InstanceType => (is => 'ro', isa => 'Str');
  has LifecycleConfigName => (is => 'ro', isa => 'Str');
  has NotebookInstanceName => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has VolumeSizeInGB => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNotebookInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateNotebookInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateNotebookInstance - Arguments for method UpdateNotebookInstance on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNotebookInstance on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateNotebookInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNotebookInstance.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateNotebookInstanceOutput = $api . sagemaker->UpdateNotebookInstance(
      NotebookInstanceName => 'MyNotebookInstanceName',
      AcceleratorTypes     => [
        'ml.eia1.medium',
        ...    # values: ml.eia1.medium, ml.eia1.large, ml.eia1.xlarge
      ],       # OPTIONAL
      AdditionalCodeRepositories => [
        'MyCodeRepositoryNameOrUrl', ...    # min: 1, max: 1024
      ],                                    # OPTIONAL
      DefaultCodeRepository        => 'MyCodeRepositoryNameOrUrl',    # OPTIONAL
      DisassociateAcceleratorTypes => 1,                              # OPTIONAL
      DisassociateAdditionalCodeRepositories => 1,                    # OPTIONAL
      DisassociateDefaultCodeRepository      => 1,                    # OPTIONAL
      DisassociateLifecycleConfig            => 1,                    # OPTIONAL
      InstanceType                           => 'ml.t2.medium',       # OPTIONAL
      LifecycleConfigName => 'MyNotebookInstanceLifecycleConfigName', # OPTIONAL
      RoleArn             => 'MyRoleArn',                             # OPTIONAL
      VolumeSizeInGB      => 1,                                       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateNotebookInstance>

=head1 ATTRIBUTES


=head2 AcceleratorTypes => ArrayRef[Str|Undef]

A list of the Elastic Inference (EI) instance types to associate with
this notebook instance. Currently only one EI instance type can be
associated with a notebook instance. For more information, see Using
Elastic Inference in Amazon SageMaker
(http://docs.aws.amazon.com/sagemaker/latest/dg/ei.html).



=head2 AdditionalCodeRepositories => ArrayRef[Str|Undef]

An array of up to three Git repositories to associate with the notebook
instance. These can be either the names of Git repositories stored as
resources in your account, or the URL of Git repositories in AWS
CodeCommit
(http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository.. These repositories are cloned at the
same level as the default repository of your notebook instance. For
more information, see Associating Git Repositories with Amazon
SageMaker Notebook Instances
(http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html).



=head2 DefaultCodeRepository => Str

The Git repository to associate with the notebook instance as its
default code repository. This can be either the name of a Git
repository stored as a resource in your account, or the URL of a Git
repository in AWS CodeCommit
(http://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html)
or in any other Git repository. When you open a notebook instance, it
opens in the directory that contains this repository. For more
information, see Associating Git Repositories with Amazon SageMaker
Notebook Instances
(http://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html).



=head2 DisassociateAcceleratorTypes => Bool

A list of the Elastic Inference (EI) instance types to remove from this
notebook instance.



=head2 DisassociateAdditionalCodeRepositories => Bool

A list of names or URLs of the default Git repositories to remove from
this notebook instance.



=head2 DisassociateDefaultCodeRepository => Bool

The name or URL of the default Git repository to remove from this
notebook instance.



=head2 DisassociateLifecycleConfig => Bool

Set to C<true> to remove the notebook instance lifecycle configuration
currently associated with the notebook instance.



=head2 InstanceType => Str

The Amazon ML compute instance type.

Valid values are: C<"ml.t2.medium">, C<"ml.t2.large">, C<"ml.t2.xlarge">, C<"ml.t2.2xlarge">, C<"ml.t3.medium">, C<"ml.t3.large">, C<"ml.t3.xlarge">, C<"ml.t3.2xlarge">, C<"ml.m4.xlarge">, C<"ml.m4.2xlarge">, C<"ml.m4.4xlarge">, C<"ml.m4.10xlarge">, C<"ml.m4.16xlarge">, C<"ml.m5.xlarge">, C<"ml.m5.2xlarge">, C<"ml.m5.4xlarge">, C<"ml.m5.12xlarge">, C<"ml.m5.24xlarge">, C<"ml.c4.xlarge">, C<"ml.c4.2xlarge">, C<"ml.c4.4xlarge">, C<"ml.c4.8xlarge">, C<"ml.c5.xlarge">, C<"ml.c5.2xlarge">, C<"ml.c5.4xlarge">, C<"ml.c5.9xlarge">, C<"ml.c5.18xlarge">, C<"ml.c5d.xlarge">, C<"ml.c5d.2xlarge">, C<"ml.c5d.4xlarge">, C<"ml.c5d.9xlarge">, C<"ml.c5d.18xlarge">, C<"ml.p2.xlarge">, C<"ml.p2.8xlarge">, C<"ml.p2.16xlarge">, C<"ml.p3.2xlarge">, C<"ml.p3.8xlarge">, C<"ml.p3.16xlarge">

=head2 LifecycleConfigName => Str

The name of a lifecycle configuration to associate with the notebook
instance. For information about lifestyle configurations, see Step 2.1:
(Optional) Customize a Notebook Instance
(http://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).



=head2 B<REQUIRED> NotebookInstanceName => Str

The name of the notebook instance to update.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role that Amazon SageMaker
can assume to access the notebook instance. For more information, see
Amazon SageMaker Roles
(http://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html).

To be able to pass this role to Amazon SageMaker, the caller of this
API must have the C<iam:PassRole> permission.



=head2 VolumeSizeInGB => Int

The size, in GB, of the ML storage volume to attach to the notebook
instance. The default value is 5 GB.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNotebookInstance in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

