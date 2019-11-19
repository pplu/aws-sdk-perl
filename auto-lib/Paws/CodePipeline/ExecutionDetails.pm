# Generated from default/object.tt
package Paws::CodePipeline::ExecutionDetails;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CodePipeline::Types qw//;
  has ExternalExecutionId => (is => 'ro', isa => Str);
  has PercentComplete => (is => 'ro', isa => Int);
  has Summary => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PercentComplete' => {
                                      'type' => 'Int'
                                    },
               'Summary' => {
                              'type' => 'Str'
                            },
               'ExternalExecutionId' => {
                                          'type' => 'Str'
                                        }
             },
  'NameInRequest' => {
                       'PercentComplete' => 'percentComplete',
                       'Summary' => 'summary',
                       'ExternalExecutionId' => 'externalExecutionId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ExecutionDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ExecutionDetails object:

  $service_obj->Method(Att1 => { ExternalExecutionId => $value, ..., Summary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ExecutionDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ExternalExecutionId

=head1 DESCRIPTION

The details of the actions taken and results produced on an artifact as
it passes through stages in the pipeline.

=head1 ATTRIBUTES


=head2 ExternalExecutionId => Str

  The system-generated unique ID of this action used to identify this job
worker in any external systems, such as AWS CodeDeploy.


=head2 PercentComplete => Int

  The percentage of work completed on the action, represented on a scale
of 0 to 100 percent.


=head2 Summary => Str

  The summary of the current status of the actions.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

