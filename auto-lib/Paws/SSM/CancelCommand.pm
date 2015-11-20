
package Paws::SSM::CancelCommand;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelCommand');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::CancelCommandResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::CancelCommand - Arguments for method CancelCommand on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelCommand on the 
Amazon Simple Systems Management Service service. Use the attributes of this class
as arguments to method CancelCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelCommand.

As an example:

  $service_obj->CancelCommand(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommandId => Str

  The ID of the command you want to cancel.


=head2 InstanceIds => ArrayRef[Str]

  (Optional) A list of instance IDs on which you want to cancel the
command. If not provided, the command is canceled on every instance on
which it was requested.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelCommand in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

