package Paws::EC2::ReservedInstancesModification;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', request_name => 'clientToken', traits => ['NameInRequest']);
  has CreateDate => (is => 'ro', isa => 'Str', request_name => 'createDate', traits => ['NameInRequest']);
  has EffectiveDate => (is => 'ro', isa => 'Str', request_name => 'effectiveDate', traits => ['NameInRequest']);
  has ModificationResults => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstancesModificationResult]', request_name => 'modificationResultSet', traits => ['NameInRequest']);
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ReservedInstancesId]', request_name => 'reservedInstancesSet', traits => ['NameInRequest']);
  has ReservedInstancesModificationId => (is => 'ro', isa => 'Str', request_name => 'reservedInstancesModificationId', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has StatusMessage => (is => 'ro', isa => 'Str', request_name => 'statusMessage', traits => ['NameInRequest']);
  has UpdateDate => (is => 'ro', isa => 'Str', request_name => 'updateDate', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReservedInstancesModification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ReservedInstancesModification object:

  $service_obj->Method(Att1 => { ClientToken => $value, ..., UpdateDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ReservedInstancesModification object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientToken

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ClientToken => Str

  A unique, case-sensitive key supplied by the client to ensure that the
request is idempotent. For more information, see Ensuring Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).


=head2 CreateDate => Str

  The time when the modification request was created.


=head2 EffectiveDate => Str

  The time for the modification to become effective.


=head2 ModificationResults => ArrayRef[L<Paws::EC2::ReservedInstancesModificationResult>]

  Contains target configurations along with their corresponding new
Reserved Instance IDs.


=head2 ReservedInstancesIds => ArrayRef[L<Paws::EC2::ReservedInstancesId>]

  The IDs of one or more Reserved Instances.


=head2 ReservedInstancesModificationId => Str

  A unique ID for the Reserved Instance modification.


=head2 Status => Str

  The status of the Reserved Instances modification request.


=head2 StatusMessage => Str

  The reason for the status.


=head2 UpdateDate => Str

  The time when the modification request was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
