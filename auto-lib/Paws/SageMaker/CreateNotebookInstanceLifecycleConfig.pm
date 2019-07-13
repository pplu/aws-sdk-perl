
package Paws::SageMaker::CreateNotebookInstanceLifecycleConfig;
  use Moose;
  has NotebookInstanceLifecycleConfigName => (is => 'ro', isa => 'Str', required => 1);
  has OnCreate => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::NotebookInstanceLifecycleHook]');
  has OnStart => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::NotebookInstanceLifecycleHook]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNotebookInstanceLifecycleConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::CreateNotebookInstanceLifecycleConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateNotebookInstanceLifecycleConfig - Arguments for method CreateNotebookInstanceLifecycleConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotebookInstanceLifecycleConfig on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method CreateNotebookInstanceLifecycleConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotebookInstanceLifecycleConfig.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $CreateNotebookInstanceLifecycleConfigOutput =
      $api . sagemaker->CreateNotebookInstanceLifecycleConfig(
      NotebookInstanceLifecycleConfigName =>
        'MyNotebookInstanceLifecycleConfigName',
      OnCreate => [
        {
          Content => 'MyNotebookInstanceLifecycleConfigContent'
          ,    # min: 1, max: 16384; OPTIONAL
        },
        ...
      ],       # OPTIONAL
      OnStart => [
        {
          Content => 'MyNotebookInstanceLifecycleConfigContent'
          ,    # min: 1, max: 16384; OPTIONAL
        },
        ...
      ],       # OPTIONAL
      );

    # Results:
    my $NotebookInstanceLifecycleConfigArn =
      $CreateNotebookInstanceLifecycleConfigOutput
      ->NotebookInstanceLifecycleConfigArn;

# Returns a L<Paws::SageMaker::CreateNotebookInstanceLifecycleConfigOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/CreateNotebookInstanceLifecycleConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotebookInstanceLifecycleConfigName => Str

The name of the lifecycle configuration.



=head2 OnCreate => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]

A shell script that runs only once, when you create a notebook
instance. The shell script must be a base64-encoded string.



=head2 OnStart => ArrayRef[L<Paws::SageMaker::NotebookInstanceLifecycleHook>]

A shell script that runs every time you start a notebook instance,
including when you create the notebook instance. The shell script must
be a base64-encoded string.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotebookInstanceLifecycleConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

