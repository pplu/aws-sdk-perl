package Paws::SSM::PatchStatus;
  use Moose;
  has ApprovalDate => (is => 'ro', isa => 'Str');
  has ComplianceLevel => (is => 'ro', isa => 'Str');
  has DeploymentStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PatchStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchStatus object:

  $service_obj->Method(Att1 => { ApprovalDate => $value, ..., DeploymentStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->ApprovalDate

=head1 DESCRIPTION

Information about the approval status of a patch.

=head1 ATTRIBUTES


=head2 ApprovalDate => Str

  The date the patch was approved (or will be approved if the status is
PENDING_APPROVAL).


=head2 ComplianceLevel => Str

  The compliance severity level for a patch.


=head2 DeploymentStatus => Str

  The approval status of a patch (APPROVED, PENDING_APPROVAL,
EXPLICIT_APPROVED, EXPLICIT_REJECTED).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

