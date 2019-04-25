package Paws::DynamoDB::PointInTimeRecoveryDescription;
  use Moose;
  has EarliestRestorableDateTime => (is => 'ro', isa => 'Str');
  has LatestRestorableDateTime => (is => 'ro', isa => 'Str');
  has PointInTimeRecoveryStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::PointInTimeRecoveryDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::PointInTimeRecoveryDescription object:

  $service_obj->Method(Att1 => { EarliestRestorableDateTime => $value, ..., PointInTimeRecoveryStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::PointInTimeRecoveryDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->EarliestRestorableDateTime

=head1 DESCRIPTION

The description of the point in time settings applied to the table.

=head1 ATTRIBUTES


=head2 EarliestRestorableDateTime => Str

  Specifies the earliest point in time you can restore your table to. It
You can restore your table to any point in time during the last 35
days.


=head2 LatestRestorableDateTime => Str

  C<LatestRestorableDateTime> is typically 5 minutes before the current
time.


=head2 PointInTimeRecoveryStatus => Str

  The current state of point in time recovery:

=over

=item *

C<ENABLING> - Point in time recovery is being enabled.

=item *

C<ENABLED> - Point in time recovery is enabled.

=item *

C<DISABLED> - Point in time recovery is disabled.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

