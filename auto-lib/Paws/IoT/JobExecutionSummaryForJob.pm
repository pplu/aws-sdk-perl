# Generated from default/object.tt
package Paws::IoT::JobExecutionSummaryForJob;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_JobExecutionSummary/;
  has JobExecutionSummary => (is => 'ro', isa => IoT_JobExecutionSummary);
  has ThingArn => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobExecutionSummary' => {
                                          'class' => 'Paws::IoT::JobExecutionSummary',
                                          'type' => 'IoT_JobExecutionSummary'
                                        },
               'ThingArn' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'JobExecutionSummary' => 'jobExecutionSummary',
                       'ThingArn' => 'thingArn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::JobExecutionSummaryForJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::JobExecutionSummaryForJob object:

  $service_obj->Method(Att1 => { JobExecutionSummary => $value, ..., ThingArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::JobExecutionSummaryForJob object:

  $result = $service_obj->Method(...);
  $result->Att1->JobExecutionSummary

=head1 DESCRIPTION

Contains a summary of information about job executions for a specific
job.

=head1 ATTRIBUTES


=head2 JobExecutionSummary => IoT_JobExecutionSummary

  Contains a subset of information about a job execution.


=head2 ThingArn => Str

  The ARN of the thing on which the job execution is running.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

