
package Paws::Glue::UpdateTrigger;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has TriggerUpdate => (is => 'ro', isa => 'Paws::Glue::TriggerUpdate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrigger');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::UpdateTriggerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateTrigger - Arguments for method UpdateTrigger on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTrigger on the 
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method UpdateTrigger.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTrigger.

As an example:

  $service_obj->UpdateTrigger(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the trigger to update.



=head2 B<REQUIRED> TriggerUpdate => L<Paws::Glue::TriggerUpdate>

The new values with which to update the trigger.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTrigger in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

