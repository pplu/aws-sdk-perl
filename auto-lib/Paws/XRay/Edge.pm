package Paws::XRay::Edge;
  use Moose;
  has Aliases => (is => 'ro', isa => 'ArrayRef[Paws::XRay::Alias]');
  has EndTime => (is => 'ro', isa => 'Str');
  has ReferenceId => (is => 'ro', isa => 'Int');
  has ResponseTimeHistogram => (is => 'ro', isa => 'ArrayRef[Paws::XRay::HistogramEntry]');
  has StartTime => (is => 'ro', isa => 'Str');
  has SummaryStatistics => (is => 'ro', isa => 'Paws::XRay::EdgeStatistics');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::Edge

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::Edge object:

  $service_obj->Method(Att1 => { Aliases => $value, ..., SummaryStatistics => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::Edge object:

  $result = $service_obj->Method(...);
  $result->Att1->Aliases

=head1 DESCRIPTION

Information about a connection between two services.

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[L<Paws::XRay::Alias>]

  Aliases for the edge.


=head2 EndTime => Str

  The end time of the last segment on the edge.


=head2 ReferenceId => Int

  Identifier of the edge. Unique within a service map.


=head2 ResponseTimeHistogram => ArrayRef[L<Paws::XRay::HistogramEntry>]

  A histogram that maps the spread of client response times on an edge.


=head2 StartTime => Str

  The start time of the first segment on the edge.


=head2 SummaryStatistics => L<Paws::XRay::EdgeStatistics>

  Response statistics for segments on the edge.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

