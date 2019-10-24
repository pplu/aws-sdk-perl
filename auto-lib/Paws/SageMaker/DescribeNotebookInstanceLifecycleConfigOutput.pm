# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeNotebookInstanceLifecycleConfigOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_NotebookInstanceLifecycleHook/;
  has CreationTime => (is => 'ro', isa => Str);
  has LastModifiedTime => (is => 'ro', isa => Str);
  has NotebookInstanceLifecycleConfigArn => (is => 'ro', isa => Str);
  has NotebookInstanceLifecycleConfigName => (is => 'ro', isa => Str);
  has OnCreate => (is => 'ro', isa => ArrayRef[SageMaker_NotebookInstanceLifecycleHook]);
  has OnStart => (is => 'ro', isa => ArrayRef[SageMaker_NotebookInstanceLifecycleHook]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OnCreate' => {
                               'class' => 'Paws::SageMaker::NotebookInstanceLifecycleHook',
                               'type' => 'ArrayRef[SageMaker_NotebookInstanceLifecycleHook]'
                             },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'OnStart' => {
                              'class' => 'Paws::SageMaker::NotebookInstanceLifecycleHook',
                              'type' => 'ArrayRef[SageMaker_NotebookInstanceLifecycleHook]'
                            },
               'LastModifiedTime' => {
                                       'type' => 'Str'
                                     },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NotebookInstanceLifecycleConfigName' => {
                                                          'type' => 'Str'
                                                        },
               'NotebookInstanceLifecycleConfigArn' => {
                                                         'type' => 'Str'
                                                       }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeNotebookInstanceLifecycleConfigOutput

=head1 ATTRIBUTES


=head2 CreationTime => Str

A timestamp that tells when the lifecycle configuration was created.


=head2 LastModifiedTime => Str

A timestamp that tells when the lifecycle configuration was last
modified.


=head2 NotebookInstanceLifecycleConfigArn => Str

The Amazon Resource Name (ARN) of the lifecycle configuration.


=head2 NotebookInstanceLifecycleConfigName => Str

The name of the lifecycle configuration.


=head2 OnCreate => ArrayRef[SageMaker_NotebookInstanceLifecycleHook]

The shell script that runs only once, when you create a notebook
instance.


=head2 OnStart => ArrayRef[SageMaker_NotebookInstanceLifecycleHook]

The shell script that runs every time you start a notebook instance,
including when you create the notebook instance.


=head2 _request_id => Str


=cut

1;