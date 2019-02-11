package Paws::SSM::AssociationExecution;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has AssociationVersion => (is => 'ro', isa => 'Str');
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DetailedStatus => (is => 'ro', isa => 'Str');
  has ExecutionId => (is => 'ro', isa => 'Str');
  has LastExecutionDate => (is => 'ro', isa => 'Str');
  has ResourceCountByStatus => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AssociationExecution

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AssociationExecution object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AssociationExecution object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

Includes information about the specified association.

=head1 ATTRIBUTES


=head2 AssociationId => Str

  The association ID.


=head2 AssociationVersion => Str

  The association version.


=head2 CreatedTime => Str

  The time the execution started.


=head2 DetailedStatus => Str

  Detailed status information about the execution.


=head2 ExecutionId => Str

  The execution ID for the association. If the association does not run
at intervals or according to a schedule, then the ExecutionID is the
same as the AssociationID.


=head2 LastExecutionDate => Str

  The date of the last execution.


=head2 ResourceCountByStatus => Str

  An aggregate status of the resources in the execution based on the
status type.


=head2 Status => Str

  The status of the association execution.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

