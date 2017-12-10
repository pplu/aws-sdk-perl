package Paws::AutoScaling::MetricGranularityType;
  use Moose;
  has Granularity => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::MetricGranularityType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::MetricGranularityType object:

  $service_obj->Method(Att1 => { Granularity => $value, ..., Granularity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::MetricGranularityType object:

  $result = $service_obj->Method(...);
  $result->Att1->Granularity

=head1 DESCRIPTION

Describes a granularity of a metric.

=head1 ATTRIBUTES


=head2 Granularity => Str

  The granularity. The only valid value is C<1Minute>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

