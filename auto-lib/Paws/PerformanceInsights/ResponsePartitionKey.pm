package Paws::PerformanceInsights::ResponsePartitionKey;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'Paws::PerformanceInsights::DimensionMap', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ResponsePartitionKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PerformanceInsights::ResponsePartitionKey object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Dimensions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PerformanceInsights::ResponsePartitionKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

If C<PartitionBy> was specified in a C<DescribeDimensionKeys> request,
the dimensions are returned in an array. Each element in the array
specifies one dimension.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Dimensions => L<Paws::PerformanceInsights::DimensionMap>

  A dimension map that contains the dimension(s) for this partition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

