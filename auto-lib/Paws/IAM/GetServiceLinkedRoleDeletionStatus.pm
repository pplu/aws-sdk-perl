
package Paws::IAM::GetServiceLinkedRoleDeletionStatus;
  use Moose;
  has DeletionTaskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceLinkedRoleDeletionStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetServiceLinkedRoleDeletionStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetServiceLinkedRoleDeletionStatusResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetServiceLinkedRoleDeletionStatus - Arguments for method GetServiceLinkedRoleDeletionStatus on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceLinkedRoleDeletionStatus on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetServiceLinkedRoleDeletionStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceLinkedRoleDeletionStatus.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $GetServiceLinkedRoleDeletionStatusResponse =
      $iam->GetServiceLinkedRoleDeletionStatus(
      DeletionTaskId => 'MyDeletionTaskIdType',

      );

    # Results:
    my $Reason = $GetServiceLinkedRoleDeletionStatusResponse->Reason;
    my $Status = $GetServiceLinkedRoleDeletionStatusResponse->Status;

    # Returns a L<Paws::IAM::GetServiceLinkedRoleDeletionStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetServiceLinkedRoleDeletionStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeletionTaskId => Str

The deletion task identifier. This identifier is returned by the
DeleteServiceLinkedRole operation in the format
C<task/aws-service-role/E<lt>service-principal-nameE<gt>/E<lt>role-nameE<gt>/E<lt>task-uuidE<gt>>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceLinkedRoleDeletionStatus in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

