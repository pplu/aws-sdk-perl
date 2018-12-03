
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

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $UpdateTriggerResponse = $glue->UpdateTrigger(
      Name          => 'MyNameString',
      TriggerUpdate => {
        Actions => [
          {
            Arguments => { 'MyGenericString' => 'MyGenericString', }, # OPTIONAL
            JobName              => 'MyNameString',    # min: 1, max: 255
            NotificationProperty => {
              NotifyDelayAfter => 1,                   # min: 1; OPTIONAL
            },    # OPTIONAL
            SecurityConfiguration => 'MyNameString',    # min: 1, max: 255
            Timeout               => 1,                 # min: 1; OPTIONAL
          },
          ...
        ],                                              # OPTIONAL
        Description => 'MyDescriptionString',           # max: 2048; OPTIONAL
        Name        => 'MyNameString',                  # min: 1, max: 255
        Predicate   => {
          Conditions => [
            {
              JobName         => 'MyNameString',    # min: 1, max: 255
              LogicalOperator => 'EQUALS',          # values: EQUALS; OPTIONAL
              State           => 'STARTING'
              , # values: STARTING, RUNNING, STOPPING, STOPPED, SUCCEEDED, FAILED, TIMEOUT; OPTIONAL
            },
            ...
          ],    # OPTIONAL
          Logical => 'AND',    # values: AND, ANY; OPTIONAL
        },    # OPTIONAL
        Schedule => 'MyGenericString',
      },

    );

    # Results:
    my $Trigger = $UpdateTriggerResponse->Trigger;

    # Returns a L<Paws::Glue::UpdateTriggerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/UpdateTrigger>

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

