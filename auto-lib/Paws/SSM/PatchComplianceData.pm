package Paws::SSM::PatchComplianceData;
  use Moose;
  has Classification => (is => 'ro', isa => 'Str', required => 1);
  has InstalledTime => (is => 'ro', isa => 'Str', required => 1);
  has KBId => (is => 'ro', isa => 'Str', required => 1);
  has Severity => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str', required => 1);
  has Title => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PatchComplianceData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchComplianceData object:

  $service_obj->Method(Att1 => { Classification => $value, ..., Title => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchComplianceData object:

  $result = $service_obj->Method(...);
  $result->Att1->Classification

=head1 DESCRIPTION

Information about the state of a patch on a particular instance as it
relates to the patch baseline used to patch the instance.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Classification => Str

  The classification of the patch (for example, SecurityUpdates, Updates,
CriticalUpdates).


=head2 B<REQUIRED> InstalledTime => Str

  The date/time the patch was installed on the instance.


=head2 B<REQUIRED> KBId => Str

  The Microsoft Knowledge Base ID of the patch.


=head2 B<REQUIRED> Severity => Str

  The severity of the patch (for example, Critical, Important, Moderate).


=head2 B<REQUIRED> State => Str

  The state of the patch on the instance (INSTALLED, INSTALLED_OTHER,
MISSING, NOT_APPLICABLE or FAILED).


=head2 B<REQUIRED> Title => Str

  The title of the patch.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

