package Paws::DLM::CreateRule;
  use Moose;
  has Interval => (is => 'ro', isa => 'Int', required => 1);
  has IntervalUnit => (is => 'ro', isa => 'Str', required => 1);
  has Times => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DLM::CreateRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DLM::CreateRule object:

  $service_obj->Method(Att1 => { Interval => $value, ..., Times => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DLM::CreateRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Interval

=head1 DESCRIPTION

Specifies when to create snapshots of EBS volumes.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Interval => Int

  The interval. The supported values are 12 and 24.


=head2 B<REQUIRED> IntervalUnit => Str

  The interval unit.


=head2 Times => ArrayRef[Str|Undef]

  The time, in UTC, to start the operation.

The operation occurs within a one-hour window following the specified
time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DLM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

