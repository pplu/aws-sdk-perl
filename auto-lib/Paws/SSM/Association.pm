package Paws::SSM::Association;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has AssociationName => (is => 'ro', isa => 'Str');
  has AssociationVersion => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has LastExecutionDate => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Overview => (is => 'ro', isa => 'Paws::SSM::AssociationOverview');
  has ScheduleExpression => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::Association

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::Association object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., Targets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::Association object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

Describes an association of a Systems Manager document and an instance.

=head1 ATTRIBUTES


=head2 AssociationId => Str

  The ID created by the system when you create an association. An
association is a binding between a document and a set of targets with a
schedule.


=head2 AssociationName => Str

  The association name.


=head2 AssociationVersion => Str

  The association version.


=head2 DocumentVersion => Str

  The version of the document used in the association.


=head2 InstanceId => Str

  The ID of the instance.


=head2 LastExecutionDate => Str

  The date on which the association was last run.


=head2 Name => Str

  The name of the Systems Manager document.


=head2 Overview => L<Paws::SSM::AssociationOverview>

  Information about the association.


=head2 ScheduleExpression => Str

  A cron expression that specifies a schedule when the association runs.


=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

  The instances targeted by the request to create an association.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

