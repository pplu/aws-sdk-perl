# Generated from default/object.tt
package Paws::CodePipeline::PipelineExecutionSummary;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_ExecutionTrigger CodePipeline_SourceRevision/;
  has LastUpdateTime => (is => 'ro', isa => Str);
  has PipelineExecutionId => (is => 'ro', isa => Str);
  has SourceRevisions => (is => 'ro', isa => ArrayRef[CodePipeline_SourceRevision]);
  has StartTime => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has Trigger => (is => 'ro', isa => CodePipeline_ExecutionTrigger);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Trigger' => {
                              'type' => 'CodePipeline_ExecutionTrigger',
                              'class' => 'Paws::CodePipeline::ExecutionTrigger'
                            },
               'Status' => {
                             'type' => 'Str'
                           },
               'StartTime' => {
                                'type' => 'Str'
                              },
               'SourceRevisions' => {
                                      'type' => 'ArrayRef[CodePipeline_SourceRevision]',
                                      'class' => 'Paws::CodePipeline::SourceRevision'
                                    },
               'PipelineExecutionId' => {
                                          'type' => 'Str'
                                        },
               'LastUpdateTime' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'SourceRevisions' => 'sourceRevisions',
                       'PipelineExecutionId' => 'pipelineExecutionId',
                       'LastUpdateTime' => 'lastUpdateTime',
                       'Trigger' => 'trigger',
                       'StartTime' => 'startTime',
                       'Status' => 'status'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::PipelineExecutionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::PipelineExecutionSummary object:

  $service_obj->Method(Att1 => { LastUpdateTime => $value, ..., Trigger => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::PipelineExecutionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->LastUpdateTime

=head1 DESCRIPTION

Summary information about a pipeline execution.

=head1 ATTRIBUTES


=head2 LastUpdateTime => Str

  The date and time of the last change to the pipeline execution, in
timestamp format.


=head2 PipelineExecutionId => Str

  The ID of the pipeline execution.


=head2 SourceRevisions => ArrayRef[CodePipeline_SourceRevision]

  A list of the source artifact revisions that initiated a pipeline
execution.


=head2 StartTime => Str

  The date and time when the pipeline execution began, in timestamp
format.


=head2 Status => Str

  The status of the pipeline execution.

=over

=item *

InProgress: The pipeline execution is currently running.

=item *

Succeeded: The pipeline execution was completed successfully.

=item *

Superseded: While this pipeline execution was waiting for the next
stage to be completed, a newer pipeline execution advanced and
continued through the pipeline instead.

=item *

Failed: The pipeline execution was not completed successfully.

=back



=head2 Trigger => CodePipeline_ExecutionTrigger

  The interaction or event that started a pipeline execution, such as
automated change detection or a C<StartPipelineExecution> API call.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

