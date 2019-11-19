# Generated from default/object.tt
package Paws::Batch::JobSummary;
  use Moo;
  use Types::Standard qw/Int Str/;
  use Paws::Batch::Types qw/Batch_ContainerSummary Batch_ArrayPropertiesSummary Batch_NodePropertiesSummary/;
  has ArrayProperties => (is => 'ro', isa => Batch_ArrayPropertiesSummary);
  has Container => (is => 'ro', isa => Batch_ContainerSummary);
  has CreatedAt => (is => 'ro', isa => Int);
  has JobId => (is => 'ro', isa => Str, required => 1);
  has JobName => (is => 'ro', isa => Str, required => 1);
  has NodeProperties => (is => 'ro', isa => Batch_NodePropertiesSummary);
  has StartedAt => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);
  has StatusReason => (is => 'ro', isa => Str);
  has StoppedAt => (is => 'ro', isa => Int);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'StatusReason' => 'statusReason',
                       'JobId' => 'jobId',
                       'CreatedAt' => 'createdAt',
                       'StartedAt' => 'startedAt',
                       'StoppedAt' => 'stoppedAt',
                       'Container' => 'container',
                       'NodeProperties' => 'nodeProperties',
                       'Status' => 'status',
                       'ArrayProperties' => 'arrayProperties',
                       'JobName' => 'jobName'
                     },
  'IsRequired' => {
                    'JobId' => 1,
                    'JobName' => 1
                  },
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'ArrayProperties' => {
                                      'type' => 'Batch_ArrayPropertiesSummary',
                                      'class' => 'Paws::Batch::ArrayPropertiesSummary'
                                    },
               'JobName' => {
                              'type' => 'Str'
                            },
               'StatusReason' => {
                                   'type' => 'Str'
                                 },
               'CreatedAt' => {
                                'type' => 'Int'
                              },
               'JobId' => {
                            'type' => 'Str'
                          },
               'StoppedAt' => {
                                'type' => 'Int'
                              },
               'Container' => {
                                'type' => 'Batch_ContainerSummary',
                                'class' => 'Paws::Batch::ContainerSummary'
                              },
               'StartedAt' => {
                                'type' => 'Int'
                              },
               'NodeProperties' => {
                                     'type' => 'Batch_NodePropertiesSummary',
                                     'class' => 'Paws::Batch::NodePropertiesSummary'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobSummary object:

  $service_obj->Method(Att1 => { ArrayProperties => $value, ..., StoppedAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ArrayProperties

=head1 DESCRIPTION

An object representing summary details of a job.

=head1 ATTRIBUTES


=head2 ArrayProperties => Batch_ArrayPropertiesSummary

  The array properties of the job, if it is an array job.


=head2 Container => Batch_ContainerSummary

  An object representing the details of the container that is associated
with the job.


=head2 CreatedAt => Int

  The Unix timestamp for when the job was created. For non-array jobs and
parent array jobs, this is when the job entered the C<SUBMITTED> state
(at the time SubmitJob was called). For array child jobs, this is when
the child job was spawned by its parent and entered the C<PENDING>
state.


=head2 B<REQUIRED> JobId => Str

  The ID of the job.


=head2 B<REQUIRED> JobName => Str

  The name of the job.


=head2 NodeProperties => Batch_NodePropertiesSummary

  The node properties for a single node in a job summary list.


=head2 StartedAt => Int

  The Unix timestamp for when the job was started (when the job
transitioned from the C<STARTING> state to the C<RUNNING> state).


=head2 Status => Str

  The current status for the job.


=head2 StatusReason => Str

  A short, human-readable string to provide additional details about the
current status of the job.


=head2 StoppedAt => Int

  The Unix timestamp for when the job was stopped (when the job
transitioned from the C<RUNNING> state to a terminal state, such as
C<SUCCEEDED> or C<FAILED>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

