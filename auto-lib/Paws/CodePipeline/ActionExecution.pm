# Generated from default/object.tt
package Paws::CodePipeline::ActionExecution;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CodePipeline::Types qw/CodePipeline_ErrorDetails/;
  has ErrorDetails => (is => 'ro', isa => CodePipeline_ErrorDetails);
  has ExternalExecutionId => (is => 'ro', isa => Str);
  has ExternalExecutionUrl => (is => 'ro', isa => Str);
  has LastStatusChange => (is => 'ro', isa => Str);
  has LastUpdatedBy => (is => 'ro', isa => Str);
  has PercentComplete => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);
  has Summary => (is => 'ro', isa => Str);
  has Token => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'ErrorDetails' => {
                                   'class' => 'Paws::CodePipeline::ErrorDetails',
                                   'type' => 'CodePipeline_ErrorDetails'
                                 },
               'Summary' => {
                              'type' => 'Str'
                            },
               'Token' => {
                            'type' => 'Str'
                          },
               'ExternalExecutionId' => {
                                          'type' => 'Str'
                                        },
               'LastStatusChange' => {
                                       'type' => 'Str'
                                     },
               'LastUpdatedBy' => {
                                    'type' => 'Str'
                                  },
               'PercentComplete' => {
                                      'type' => 'Int'
                                    },
               'ExternalExecutionUrl' => {
                                           'type' => 'Str'
                                         }
             },
  'NameInRequest' => {
                       'Status' => 'status',
                       'ErrorDetails' => 'errorDetails',
                       'Summary' => 'summary',
                       'Token' => 'token',
                       'ExternalExecutionId' => 'externalExecutionId',
                       'LastStatusChange' => 'lastStatusChange',
                       'LastUpdatedBy' => 'lastUpdatedBy',
                       'PercentComplete' => 'percentComplete',
                       'ExternalExecutionUrl' => 'externalExecutionUrl'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ActionExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ActionExecution object:

  $service_obj->Method(Att1 => { ErrorDetails => $value, ..., Token => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ActionExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->ErrorDetails

=head1 DESCRIPTION

Represents information about the run of an action.

=head1 ATTRIBUTES


=head2 ErrorDetails => CodePipeline_ErrorDetails

  The details of an error returned by a URL external to AWS.


=head2 ExternalExecutionId => Str

  The external ID of the run of the action.


=head2 ExternalExecutionUrl => Str

  The URL of a resource external to AWS that will be used when running
the action, for example an external repository URL.


=head2 LastStatusChange => Str

  The last status change of the action.


=head2 LastUpdatedBy => Str

  The ARN of the user who last changed the pipeline.


=head2 PercentComplete => Int

  A percentage of completeness of the action as it runs.


=head2 Status => Str

  The status of the action, or for a completed action, the last status of
the action.


=head2 Summary => Str

  A summary of the run of the action.


=head2 Token => Str

  The system-generated token used to identify a unique approval request.
The token for each open approval request can be obtained using the
C<GetPipelineState> command and is used to validate that the approval
request corresponding to this token is still valid.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

