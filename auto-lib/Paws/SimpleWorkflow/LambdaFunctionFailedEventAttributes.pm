# Generated from default/object.tt
package Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SimpleWorkflow::Types qw//;
  has Details => (is => 'ro', isa => Str);
  has Reason => (is => 'ro', isa => Str);
  has ScheduledEventId => (is => 'ro', isa => Int, required => 1);
  has StartedEventId => (is => 'ro', isa => Int, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Details' => 'details',
                       'StartedEventId' => 'startedEventId',
                       'Reason' => 'reason',
                       'ScheduledEventId' => 'scheduledEventId'
                     },
  'IsRequired' => {
                    'StartedEventId' => 1,
                    'ScheduledEventId' => 1
                  },
  'types' => {
               'ScheduledEventId' => {
                                       'type' => 'Int'
                                     },
               'Reason' => {
                             'type' => 'Str'
                           },
               'Details' => {
                              'type' => 'Str'
                            },
               'StartedEventId' => {
                                     'type' => 'Int'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes object:

  $service_obj->Method(Att1 => { Details => $value, ..., StartedEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::LambdaFunctionFailedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Details

=head1 DESCRIPTION

Provides the details of the C<LambdaFunctionFailed> event. It isn't set
for other event types.

=head1 ATTRIBUTES


=head2 Details => Str

  The details of the failure.


=head2 Reason => Str

  The reason provided for the failure.


=head2 B<REQUIRED> ScheduledEventId => Int

  The ID of the C<LambdaFunctionScheduled> event that was recorded when
this activity task was scheduled. To help diagnose issues, use this
information to trace back the chain of events leading up to this event.


=head2 B<REQUIRED> StartedEventId => Int

  The ID of the C<LambdaFunctionStarted> event recorded when this
activity task started. To help diagnose issues, use this information to
trace back the chain of events leading up to this event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

