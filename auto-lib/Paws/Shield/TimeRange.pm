package Paws::Shield::TimeRange;
  use Moose;
  has FromInclusive => (is => 'ro', isa => 'Str');
  has ToExclusive => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::TimeRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Shield::TimeRange object:

  $service_obj->Method(Att1 => { FromInclusive => $value, ..., ToExclusive => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Shield::TimeRange object:

  $result = $service_obj->Method(...);
  $result->Att1->FromInclusive

=head1 DESCRIPTION

The time range.

=head1 ATTRIBUTES


=head2 FromInclusive => Str

  The start time, in Unix time in seconds. For more information see
timestamp
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types).


=head2 ToExclusive => Str

  The end time, in Unix time in seconds. For more information see
timestamp
(http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

