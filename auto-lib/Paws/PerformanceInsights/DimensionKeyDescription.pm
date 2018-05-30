package Paws::PerformanceInsights::DimensionKeyDescription;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'Paws::PerformanceInsights::DimensionMap');
  has Partitions => (is => 'ro', isa => 'ArrayRef[Num]');
  has Total => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::DimensionKeyDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PerformanceInsights::DimensionKeyDescription object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Total => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PerformanceInsights::DimensionKeyDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

An array of descriptions and aggregated values for each dimension
within a dimension group.

=head1 ATTRIBUTES


=head2 Dimensions => L<Paws::PerformanceInsights::DimensionMap>

  A map of name-value pairs for the dimensions in the group.


=head2 Partitions => ArrayRef[Num]

  If C<PartitionBy> was specified, C<PartitionKeys> contains the
dimensions that were.


=head2 Total => Num

  The aggregated metric value for the dimension(s), over the requested
time range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

