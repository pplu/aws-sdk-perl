package Paws::CodeGuruProfiler::AggregatedProfileTime;
  use Moose;
  has Period => (is => 'ro', isa => 'Str', request_name => 'period', traits => ['NameInRequest']);
  has Start => (is => 'ro', isa => 'Str', request_name => 'start', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::AggregatedProfileTime

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeGuruProfiler::AggregatedProfileTime object:

  $service_obj->Method(Att1 => { Period => $value, ..., Start => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeGuruProfiler::AggregatedProfileTime object:

  $result = $service_obj->Method(...);
  $result->Att1->Period

=head1 DESCRIPTION

The time range of an aggregated profile.

=head1 ATTRIBUTES


=head2 Period => Str

  The aggregation period of the aggregated profile.


=head2 Start => Str

  The start time of the aggregated profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

