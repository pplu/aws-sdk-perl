package Paws::SSM::InstanceAssociationStatusInfo;
  use Moose;
  has AssociationId => (is => 'ro', isa => 'Str');
  has AssociationName => (is => 'ro', isa => 'Str');
  has AssociationVersion => (is => 'ro', isa => 'Str');
  has DetailedStatus => (is => 'ro', isa => 'Str');
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has ErrorCode => (is => 'ro', isa => 'Str');
  has ExecutionDate => (is => 'ro', isa => 'Str');
  has ExecutionSummary => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OutputUrl => (is => 'ro', isa => 'Paws::SSM::InstanceAssociationOutputUrl');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstanceAssociationStatusInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstanceAssociationStatusInfo object:

  $service_obj->Method(Att1 => { AssociationId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstanceAssociationStatusInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociationId

=head1 DESCRIPTION

Status information about the instance association.

=head1 ATTRIBUTES


=head2 AssociationId => Str

  The association ID.


=head2 AssociationName => Str

  The name of the association applied to the instance.


=head2 AssociationVersion => Str

  The version of the association applied to the instance.


=head2 DetailedStatus => Str

  Detailed status information about the instance association.


=head2 DocumentVersion => Str

  The association document verions.


=head2 ErrorCode => Str

  An error code returned by the request to create the association.


=head2 ExecutionDate => Str

  The date the instance association executed.


=head2 ExecutionSummary => Str

  Summary information about association execution.


=head2 InstanceId => Str

  The instance ID where the association was created.


=head2 Name => Str

  The name of the association.


=head2 OutputUrl => L<Paws::SSM::InstanceAssociationOutputUrl>

  A URL for an Amazon S3 bucket where you want to store the results of
this request.


=head2 Status => Str

  Status information about the instance association.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

