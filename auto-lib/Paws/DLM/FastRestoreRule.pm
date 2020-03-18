package Paws::DLM::FastRestoreRule;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Count => (is => 'ro', isa => 'Int');
  has Interval => (is => 'ro', isa => 'Int');
  has IntervalUnit => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::FastRestoreRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::FastRestoreRule object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., IntervalUnit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::FastRestoreRule object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Specifies a rule for enabling fast snapshot restore. You can enable
fast snapshot restore based on either a count or a time interval.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZones => ArrayRef[Str|Undef]

  The Availability Zones in which to enable fast snapshot restore.


=head2 Count => Int

  The number of snapshots to be enabled with fast snapshot restore.


=head2 Interval => Int

  The amount of time to enable fast snapshot restore. The maximum is 100
years. This is equivalent to 1200 months, 5200 weeks, or 36500 days.


=head2 IntervalUnit => Str

  The unit of time for enabling fast snapshot restore.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

