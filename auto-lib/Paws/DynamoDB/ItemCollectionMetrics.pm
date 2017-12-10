package Paws::DynamoDB::ItemCollectionMetrics;
  use Moose;
  has ItemCollectionKey => (is => 'ro', isa => 'Paws::DynamoDB::ItemCollectionKeyAttributeMap');
  has SizeEstimateRangeGB => (is => 'ro', isa => 'ArrayRef[Num]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ItemCollectionMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ItemCollectionMetrics object:

  $service_obj->Method(Att1 => { ItemCollectionKey => $value, ..., SizeEstimateRangeGB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ItemCollectionMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->ItemCollectionKey

=head1 DESCRIPTION

Information about item collections, if any, that were affected by the
operation. C<ItemCollectionMetrics> is only returned if the request
asked for it. If the table does not have any local secondary indexes,
this information is not returned in the response.

=head1 ATTRIBUTES


=head2 ItemCollectionKey => L<Paws::DynamoDB::ItemCollectionKeyAttributeMap>

  The partition key value of the item collection. This value is the same
as the partition key value of the item.


=head2 SizeEstimateRangeGB => ArrayRef[Num]

  An estimate of item collection size, in gigabytes. This value is a
two-element array containing a lower bound and an upper bound for the
estimate. The estimate includes the size of all the items in the table,
plus the size of all attributes projected into all of the local
secondary indexes on that table. Use this estimate to measure whether a
local secondary index is approaching its size limit.

The estimate is subject to change over time; therefore, do not rely on
the precision or accuracy of the estimate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

