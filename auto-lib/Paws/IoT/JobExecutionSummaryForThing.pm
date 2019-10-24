# Generated from default/object.tt
package Paws::IoT::JobExecutionSummaryForThing;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_JobExecutionSummary/;
  has JobExecutionSummary => (is => 'ro', isa => IoT_JobExecutionSummary);
  has JobId => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobExecutionSummary' => {
                                          'class' => 'Paws::IoT::JobExecutionSummary',
                                          'type' => 'IoT_JobExecutionSummary'
                                        },
               'JobId' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'JobExecutionSummary' => 'jobExecutionSummary',
                       'JobId' => 'jobId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::JobExecutionSummaryForThing

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::JobExecutionSummaryForThing object:

  $service_obj->Method(Att1 => { JobExecutionSummary => $value, ..., JobId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::JobExecutionSummaryForThing object:

  $result = $service_obj->Method(...);
  $result->Att1->JobExecutionSummary

=head1 DESCRIPTION

The job execution summary for a thing.

=head1 ATTRIBUTES


=head2 JobExecutionSummary => IoT_JobExecutionSummary

  Contains a subset of information about a job execution.


=head2 JobId => Str

  The unique identifier you assigned to this job when it was created.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

