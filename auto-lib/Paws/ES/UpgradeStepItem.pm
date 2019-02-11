package Paws::ES::UpgradeStepItem;
  use Moose;
  has Issues => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ProgressPercent => (is => 'ro', isa => 'Num');
  has UpgradeStep => (is => 'ro', isa => 'Str');
  has UpgradeStepStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::UpgradeStepItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ES::UpgradeStepItem object:

  $service_obj->Method(Att1 => { Issues => $value, ..., UpgradeStepStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ES::UpgradeStepItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Issues

=head1 DESCRIPTION

Represents a single step of the Upgrade or Upgrade Eligibility Check
workflow.

=head1 ATTRIBUTES


=head2 Issues => ArrayRef[Str|Undef]

  A list of strings containing detailed information about the errors
encountered in a particular step.


=head2 ProgressPercent => Num

  The Floating point value representing progress percentage of a
particular step.


=head2 UpgradeStep => Str

  Represents one of 3 steps that an Upgrade or Upgrade Eligibility Check
does through:

=over

=item * PreUpgradeCheck

=item * Snapshot

=item * Upgrade

=back



=head2 UpgradeStepStatus => Str

  The status of a particular step during an upgrade. The status can take
one of the following values:

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

