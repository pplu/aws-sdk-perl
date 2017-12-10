package Paws::SSM::ComplianceExecutionSummary;
  use Moose;
  has ExecutionId => (is => 'ro', isa => 'Str');
  has ExecutionTime => (is => 'ro', isa => 'Str', required => 1);
  has ExecutionType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ComplianceExecutionSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ComplianceExecutionSummary object:

  $service_obj->Method(Att1 => { ExecutionId => $value, ..., ExecutionType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ComplianceExecutionSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->ExecutionId

=head1 DESCRIPTION

A summary of the call execution that includes an execution ID, the type
of execution (for example, C<Command>), and the date/time of the
execution using a datetime object that is saved in the following
format: yyyy-MM-dd'T'HH:mm:ss'Z'.

=head1 ATTRIBUTES


=head2 ExecutionId => Str

  An ID created by the system when C<PutComplianceItems> was called. For
example, C<CommandID> is a valid execution ID. You can use this ID in
subsequent calls.


=head2 B<REQUIRED> ExecutionTime => Str

  The time the execution ran as a datetime object that is saved in the
following format: yyyy-MM-dd'T'HH:mm:ss'Z'.


=head2 ExecutionType => Str

  The type of execution. For example, C<Command> is a valid execution
type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

