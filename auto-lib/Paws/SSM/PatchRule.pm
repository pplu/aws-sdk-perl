package Paws::SSM::PatchRule;
  use Moose;
  has ApproveAfterDays => (is => 'ro', isa => 'Int', required => 1);
  has ComplianceLevel => (is => 'ro', isa => 'Str');
  has EnableNonSecurity => (is => 'ro', isa => 'Bool');
  has PatchFilterGroup => (is => 'ro', isa => 'Paws::SSM::PatchFilterGroup', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PatchRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchRule object:

  $service_obj->Method(Att1 => { ApproveAfterDays => $value, ..., PatchFilterGroup => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchRule object:

  $result = $service_obj->Method(...);
  $result->Att1->ApproveAfterDays

=head1 DESCRIPTION

Defines an approval rule for a patch baseline.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApproveAfterDays => Int

  The number of days after the release date of each patch matched by the
rule that the patch is marked as approved in the patch baseline. For
example, a value of C<7> means that patches are approved seven days
after they are released.


=head2 ComplianceLevel => Str

  A compliance severity level for all approved patches in a patch
baseline. Valid compliance severity levels include the following:
Unspecified, Critical, High, Medium, Low, and Informational.


=head2 EnableNonSecurity => Bool

  For instances identified by the approval rule filters, enables a patch
baseline to apply non-security updates available in the specified
repository. The default value is 'false'. Applies to Linux instances
only.


=head2 B<REQUIRED> PatchFilterGroup => L<Paws::SSM::PatchFilterGroup>

  The patch filter group that defines the criteria for the rule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

