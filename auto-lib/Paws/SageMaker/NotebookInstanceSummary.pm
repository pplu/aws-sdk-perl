package Paws::SageMaker::NotebookInstanceSummary;
  use Moose;
  has AdditionalCodeRepositories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DefaultCodeRepository => (is => 'ro', isa => 'Str');
  has InstanceType => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');
  has NotebookInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has NotebookInstanceLifecycleConfigName => (is => 'ro', isa => 'Str');
  has NotebookInstanceName => (is => 'ro', isa => 'Str', required => 1);
  has NotebookInstanceStatus => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::NotebookInstanceSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::NotebookInstanceSummary object:

  $service_obj->Method(Att1 => { AdditionalCodeRepositories => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::NotebookInstanceSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->AdditionalCodeRepositories

=head1 DESCRIPTION

Provides summary information for an Amazon SageMaker notebook instance.

=head1 ATTRIBUTES


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

  A timestamp that shows when the notebook instance was created.


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


=head2 InstanceType => Str

  The type of ML compute instance that the notebook instance is running
on.


=head2 LastModifiedTime => Str

  A timestamp that shows when the notebook instance was last modified.


=head2 B<REQUIRED> NotebookInstanceArn => Str

  The Amazon Resource Name (ARN) of the notebook instance.


=head2 NotebookInstanceLifecycleConfigName => Str

  The name of a notebook instance lifecycle configuration associated with
this notebook instance.

For information about notebook instance lifestyle configurations, see
Step 2.1: (Optional) Customize a Notebook Instance
(http://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html).


=head2 B<REQUIRED> NotebookInstanceName => Str

  The name of the notebook instance that you want a summary for.


=head2 NotebookInstanceStatus => Str

  The status of the notebook instance.


=head2 Url => Str

  The URL that you use to connect to the Jupyter instance running in your
notebook instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

