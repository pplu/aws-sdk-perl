package Paws::KinesisVideo::StreamNameCondition;
  use Moose;
  has ComparisonOperator => (is => 'ro', isa => 'Str');
  has ComparisonValue => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::StreamNameCondition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisVideo::StreamNameCondition object:

  $service_obj->Method(Att1 => { ComparisonOperator => $value, ..., ComparisonValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisVideo::StreamNameCondition object:

  $result = $service_obj->Method(...);
  $result->Att1->ComparisonOperator

=head1 DESCRIPTION

Specifies the condition that streams must satisfy to be returned when
you list streams (see the C<ListStreams> API). A condition has a
comparison operation and a value. Currently, you can specify only the
C<BEGINS_WITH> operator, which finds streams whose names start with a
given prefix.

=head1 ATTRIBUTES


=head2 ComparisonOperator => Str

  A comparison operator. Currently, you can specify only the
C<BEGINS_WITH> operator, which finds streams whose names start with a
given prefix.


=head2 ComparisonValue => Str

  A value to compare.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisVideo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

