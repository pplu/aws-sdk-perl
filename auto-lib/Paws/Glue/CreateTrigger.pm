
package Paws::Glue::CreateTrigger;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Action]', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Predicate => (is => 'ro', isa => 'Paws::Glue::Predicate');
  has Schedule => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTrigger');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateTriggerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateTrigger - Arguments for method CreateTrigger on Paws::Glue

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTrigger on the 
AWS Glue service. Use the attributes of this class
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

The name to assign to the new trigger.



=head2 Predicate => L<Paws::Glue::Predicate>

A predicate to specify when the new trigger should fire.



=head2 Schedule => Str

A cron schedule expression for the new trigger.



=head2 B<REQUIRED> Type => Str

The type of the new trigger.

Valid values are: C<"SCHEDULED">, C<"CONDITIONAL">, C<"ON_DEMAND">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTrigger in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

