# Generated from default/object.tt
package Paws::IoT::JobProcessDetails;
  use Moo;
  use Types::Standard qw/Int ArrayRef Undef Str/;
  use Paws::IoT::Types qw//;
  has NumberOfCanceledThings => (is => 'ro', isa => Int);
  has NumberOfFailedThings => (is => 'ro', isa => Int);
  has NumberOfInProgressThings => (is => 'ro', isa => Int);
  has NumberOfQueuedThings => (is => 'ro', isa => Int);
  has NumberOfRejectedThings => (is => 'ro', isa => Int);
  has NumberOfRemovedThings => (is => 'ro', isa => Int);
  has NumberOfSucceededThings => (is => 'ro', isa => Int);
  has NumberOfTimedOutThings => (is => 'ro', isa => Int);
  has ProcessingTargets => (is => 'ro', isa => ArrayRef[Str|Undef]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NumberOfQueuedThings' => {
                                           'type' => 'Int'
                                         },
               'NumberOfSucceededThings' => {
                                              'type' => 'Int'
                                            },
               'NumberOfCanceledThings' => {
                                             'type' => 'Int'
                                           },
               'NumberOfTimedOutThings' => {
                                             'type' => 'Int'
                                           },
               'ProcessingTargets' => {
                                        'type' => 'ArrayRef[Str|Undef]'
                                      },
               'NumberOfInProgressThings' => {
                                               'type' => 'Int'
                                             },
               'NumberOfRejectedThings' => {
                                             'type' => 'Int'
                                           },
               'NumberOfRemovedThings' => {
                                            'type' => 'Int'
                                          },
               'NumberOfFailedThings' => {
                                           'type' => 'Int'
                                         }
             },
  'NameInRequest' => {
                       'NumberOfQueuedThings' => 'numberOfQueuedThings',
                       'NumberOfSucceededThings' => 'numberOfSucceededThings',
                       'NumberOfCanceledThings' => 'numberOfCanceledThings',
                       'NumberOfTimedOutThings' => 'numberOfTimedOutThings',
                       'ProcessingTargets' => 'processingTargets',
                       'NumberOfInProgressThings' => 'numberOfInProgressThings',
                       'NumberOfRejectedThings' => 'numberOfRejectedThings',
                       'NumberOfRemovedThings' => 'numberOfRemovedThings',
                       'NumberOfFailedThings' => 'numberOfFailedThings'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::JobProcessDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::JobProcessDetails object:

  $service_obj->Method(Att1 => { NumberOfCanceledThings => $value, ..., ProcessingTargets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::JobProcessDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->NumberOfCanceledThings

=head1 DESCRIPTION

The job process details.

=head1 ATTRIBUTES


=head2 NumberOfCanceledThings => Int

  The number of things that cancelled the job.


=head2 NumberOfFailedThings => Int

  The number of things that failed executing the job.


=head2 NumberOfInProgressThings => Int

  The number of things currently executing the job.


=head2 NumberOfQueuedThings => Int

  The number of things that are awaiting execution of the job.


=head2 NumberOfRejectedThings => Int

  The number of things that rejected the job.


=head2 NumberOfRemovedThings => Int

  The number of things that are no longer scheduled to execute the job
because they have been deleted or have been removed from the group that
was a target of the job.


=head2 NumberOfSucceededThings => Int

  The number of things which successfully completed the job.


=head2 NumberOfTimedOutThings => Int

  The number of things whose job execution status is C<TIMED_OUT>.


=head2 ProcessingTargets => ArrayRef[Str|Undef]

  The target devices to which the job execution is being rolled out. This
value will be null after the job execution has finished rolling out to
all the target devices.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

