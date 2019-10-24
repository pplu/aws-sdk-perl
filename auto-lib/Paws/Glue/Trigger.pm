# Generated from default/object.tt
package Paws::Glue::Trigger;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Glue::Types qw/Glue_Action Glue_Predicate/;
  has Actions => (is => 'ro', isa => ArrayRef[Glue_Action]);
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Predicate => (is => 'ro', isa => Glue_Predicate);
  has Schedule => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);
  has Type => (is => 'ro', isa => Str);
  has WorkflowName => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               'State' => {
                            'type' => 'Str'
                          },
               'Type' => {
                           'type' => 'Str'
                         },
               'Actions' => {
                              'class' => 'Paws::Glue::Action',
                              'type' => 'ArrayRef[Glue_Action]'
                            },
               'Predicate' => {
                                'class' => 'Paws::Glue::Predicate',
                                'type' => 'Glue_Predicate'
                              },
               'WorkflowName' => {
                                   'type' => 'Str'
                                 },
               'Schedule' => {
                               'type' => 'Str'
                             },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Trigger

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Trigger object:

  $service_obj->Method(Att1 => { Actions => $value, ..., WorkflowName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Trigger object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

Information about a specific trigger.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[Glue_Action]

  The actions initiated by this trigger.


=head2 Description => Str

  A description of this trigger.


=head2 Id => Str

  Reserved for future use.


=head2 Name => Str

  The name of the trigger.


=head2 Predicate => Glue_Predicate

  The predicate of this trigger, which defines when it will fire.


=head2 Schedule => Str

  A C<cron> expression used to specify the schedule (see Time-Based
Schedules for Jobs and Crawlers
(https://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html).
For example, to run something every day at 12:15 UTC, you would
specify: C<cron(15 12 * * ? *)>.


=head2 State => Str

  The current state of the trigger.


=head2 Type => Str

  The type of trigger that this is.


=head2 WorkflowName => Str

  The name of the workflow associated with the trigger.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

