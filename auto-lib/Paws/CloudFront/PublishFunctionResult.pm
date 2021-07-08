
package Paws::CloudFront::PublishFunctionResult;
  use Moose;
  has FunctionSummary => (is => 'ro', isa => 'Paws::CloudFront::FunctionSummary', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::PublishFunctionResult

=head1 ATTRIBUTES


=head2 FunctionSummary => L<Paws::CloudFront::FunctionSummary>

Contains configuration information and metadata about a CloudFront
function.




=cut

