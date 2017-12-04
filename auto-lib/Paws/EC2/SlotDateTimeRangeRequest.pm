package Paws::EC2::SlotDateTimeRangeRequest;
  use Moose;
  has EarliestTime => (is => 'ro', isa => 'Str', required => 1);
  has LatestTime => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::SlotDateTimeRangeRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::SlotDateTimeRangeRequest object:

  $service_obj->Method(Att1 => { EarliestTime => $value, ..., LatestTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::SlotDateTimeRangeRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->EarliestTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> EarliestTime => Str

  The earliest date and time, in UTC, for the Scheduled Instance to
start.


=head2 B<REQUIRED> LatestTime => Str

  The latest date and time, in UTC, for the Scheduled Instance to start.
This value must be later than or equal to the earliest date and at most
three months in the future.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
