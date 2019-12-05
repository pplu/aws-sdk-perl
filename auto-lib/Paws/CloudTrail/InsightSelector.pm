package Paws::CloudTrail::InsightSelector;
  use Moose;
  has InsightType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::InsightSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::InsightSelector object:

  $service_obj->Method(Att1 => { InsightType => $value, ..., InsightType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::InsightSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->InsightType

=head1 DESCRIPTION

A JSON string that contains a list of insight types that are logged on
a trail.

=head1 ATTRIBUTES


=head2 InsightType => Str

  The type of insights to log on a trail. In this release, only
C<ApiCallRateInsight> is supported as an insight type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

