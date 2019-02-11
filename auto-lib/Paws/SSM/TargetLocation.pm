package Paws::SSM::TargetLocation;
  use Moose;
  has Accounts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ExecutionRoleName => (is => 'ro', isa => 'Str');
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TargetLocationMaxConcurrency => (is => 'ro', isa => 'Str');
  has TargetLocationMaxErrors => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::TargetLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::TargetLocation object:

  $service_obj->Method(Att1 => { Accounts => $value, ..., TargetLocationMaxErrors => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::TargetLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->Accounts

=head1 DESCRIPTION

The combination of AWS Regions and accounts targeted by the current
Automation execution.

=head1 ATTRIBUTES


=head2 Accounts => ArrayRef[Str|Undef]

  The AWS accounts targeted by the current Automation execution.


=head2 ExecutionRoleName => Str

  The Automation execution role used by the currently executing
Automation.


=head2 Regions => ArrayRef[Str|Undef]

  The AWS Regions targeted by the current Automation execution.


=head2 TargetLocationMaxConcurrency => Str

  The maxium number of AWS accounts and AWS regions allowed to run the
Automation concurrently


=head2 TargetLocationMaxErrors => Str

  The maxium number of errors allowed before the system stops queueing
additional Automation executions for the currently executing
Automation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

