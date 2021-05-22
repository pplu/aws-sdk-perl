
package Paws::IoTSiteWise::GetInterpolatedAssetPropertyValuesResponse;
  use Moose;
  has InterpolatedAssetPropertyValues => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::InterpolatedAssetPropertyValue]', traits => ['NameInRequest'], request_name => 'interpolatedAssetPropertyValues', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::GetInterpolatedAssetPropertyValuesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InterpolatedAssetPropertyValues => ArrayRef[L<Paws::IoTSiteWise::InterpolatedAssetPropertyValue>]

The requested interpolated values.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 _request_id => Str


=cut

