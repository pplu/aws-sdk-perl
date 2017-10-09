
package Paws::CloudHSMv2::DescribeClusters;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::CloudHSMv2::Filters');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::DescribeClustersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DescribeClusters - Arguments for method DescribeClusters on Paws::CloudHSMv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusters on the 
AWS CloudHSM V2 service. Use the attributes of this class
as arguments to method DescribeClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusters.

As an example:

  $service_obj->DescribeClusters(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filters => L<Paws::CloudHSMv2::Filters>

One or more filters to limit the items returned in the response.

Use the C<clusterIds> filter to return only the specified clusters.
Specify clusters by their cluster identifier (ID).

Use the C<vpcIds> filter to return only the clusters in the specified
virtual private clouds (VPCs). Specify VPCs by their VPC identifier
(ID).

Use the C<states> filter to return only clusters that match the
specified state.



=head2 MaxResults => Int

The maximum number of clusters to return in the response. When there
are more clusters than the number you specify, the response contains a
C<NextToken> value.



=head2 NextToken => Str

The C<NextToken> value that you received in the previous response. Use
this value to get more clusters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusters in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

