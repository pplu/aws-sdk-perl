package Paws::ES::UpgradeHistory;
  use Moose;
  has StartTimestamp => (is => 'ro', isa => 'Str');
  has StepsList => (is => 'ro', isa => 'ArrayRef[Paws::ES::UpgradeStepItem]');
  has UpgradeName => (is => 'ro', isa => 'Str');
  has UpgradeStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpgradeHistory

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::UpgradeHistory object:

  $service_obj->Method(Att1 => { StartTimestamp => $value, ..., UpgradeStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::UpgradeHistory object:

  $result = $service_obj->Method(...);
  $result->Att1->StartTimestamp

=head1 DESCRIPTION

History of the last 10 Upgrades and Upgrade Eligibility Checks.

=head1 ATTRIBUTES


=head2 StartTimestamp => Str

  UTC Timestamp at which the Upgrade API call was made in
"yyyy-MM-ddTHH:mm:ssZ" format.


=head2 StepsList => ArrayRef[L<Paws::ES::UpgradeStepItem>]

  A list of C< UpgradeStepItem > s representing information about each
step performed as pard of a specific Upgrade or Upgrade Eligibility
Check.


=head2 UpgradeName => Str

  A string that describes the update briefly


=head2 UpgradeStatus => Str

  The overall status of the update. The status can take one of the
following values:

=over

=item * In Progress

=item * Succeeded

=item * Succeeded with Issues

=item * Failed

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

