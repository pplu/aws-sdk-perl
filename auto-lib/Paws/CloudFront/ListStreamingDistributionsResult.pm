
package Paws::CloudFront::ListStreamingDistributionsResult;
  use Moose;
  has StreamingDistributionList => (is => 'ro', isa => 'Paws::CloudFront::StreamingDistributionList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListStreamingDistributionsResult

=head1 ATTRIBUTES


=head2 StreamingDistributionList => L<Paws::CloudFront::StreamingDistributionList>

The C<StreamingDistributionList> type.




=cut

