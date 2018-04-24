
package Paws::Glue::CreateTrigger;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Action]', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Predicate => (is => 'ro', isa => 'Paws::Glue::Predicate');
  has Schedule => (is => 'ro', isa => 'Str');
  has StartOnCreation => (is => 'ro', isa => 'Bool');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrigger');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateTriggerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateTrigger - Arguments for method CreateTrigger on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrigger on the 
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateTrigger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTrigger.

As an example:

  $service_obj->CreateTrigger(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::Glue::Action>]

The actions initiated by this trigger when it fires.



=head2 Description => Str

A description of the new trigger.



=head2 B<REQUIRED> Name => Str

The name of the trigger.



=head2 Predicate => L<Paws::Glue::Predicate>

A predicate to specify when the new trigger should fire.

This field is required when the trigger type is CONDITIONAL.



=head2 Schedule => Str

A C<cron> expression used to specify the schedule (see Time-Based
Schedules for Jobs and Crawlers
(http://docs.aws.amazon.com/glue/latest/dg/monitor-data-warehouse-schedule.html).
For example, to run something every day at 12:15 UTC, you would
specify: C<cron(15 12 * * ? *)>.

This field is required when the trigger type is SCHEDULED.



=head2 StartOnCreation => Bool

Set to true to start SCHEDULED and CONDITIONAL triggers when created.
True not supported for ON_DEMAND triggers.



=head2 B<REQUIRED> Type => Str

The type of the new trigger.

Valid values are: C<"SCHEDULED">, C<"CONDITIONAL">, C<"ON_DEMAND">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrigger in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

