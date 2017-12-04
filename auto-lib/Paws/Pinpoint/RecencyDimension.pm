package Paws::Pinpoint::RecencyDimension;
  use Moose;
  has Duration => (is => 'ro', isa => 'Str');
  has RecencyType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::RecencyDimension

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::RecencyDimension object:

  $service_obj->Method(Att1 => { Duration => $value, ..., RecencyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::RecencyDimension object:

  $result = $service_obj->Method(...);
  $result->Att1->Duration

=head1 DESCRIPTION

Define how a segment based on recency of use.

=head1 ATTRIBUTES


=head2 Duration => Str

  The length of time during which users have been active or inactive with
your app. Valid values: HR_24, DAY_7, DAY_14, DAY_30


=head2 RecencyType => Str

  The recency dimension type: ACTIVE - Users who have used your app
within the specified duration are included in the segment. INACTIVE -
Users who have not used your app within the specified duration are
included in the segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

