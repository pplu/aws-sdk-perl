# Generated by default/object.tt
package Paws::LocationService::Step;
  use Moose;
  has Distance => (is => 'ro', isa => 'Num', required => 1);
  has DurationSeconds => (is => 'ro', isa => 'Num', required => 1);
  has EndPosition => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);
  has GeometryOffset => (is => 'ro', isa => 'Int');
  has StartPosition => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::Step

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LocationService::Step object:

  $service_obj->Method(Att1 => { Distance => $value, ..., StartPosition => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LocationService::Step object:

  $result = $service_obj->Method(...);
  $result->Att1->Distance

=head1 DESCRIPTION

Represents an element of a leg within a route. A step contains
instructions for how to move to the next step in the leg.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Distance => Num

The travel distance between the step's C<StartPosition> and
C<EndPosition>.


=head2 B<REQUIRED> DurationSeconds => Num

The estimated travel time, in seconds, from the step's C<StartPosition>
to the C<EndPosition>. . The travel mode and departure time that you
specify in the request determines the calculated time.


=head2 B<REQUIRED> EndPosition => ArrayRef[Num]

The end position of a step. If the position the last step in the leg,
this position is the same as the end position of the leg.


=head2 GeometryOffset => Int

Represents the start position, or index, in a sequence of steps within
the leg's line string geometry. For example, the index of the first
step in a leg geometry is C<0>.

Included in the response for queries that set C<IncludeLegGeometry> to
C<True>.


=head2 B<REQUIRED> StartPosition => ArrayRef[Num]

The starting position of a step. If the position is the first step in
the leg, this position is the same as the start position of the leg.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

