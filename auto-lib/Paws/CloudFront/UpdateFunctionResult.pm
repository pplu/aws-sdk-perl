
package Paws::CloudFront::UpdateFunctionResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETtag', traits => ['ParamInHeader']);
  has FunctionSummary => (is => 'ro', isa => 'Paws::CloudFront::FunctionSummary', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateFunctionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The version identifier for the current version of the CloudFront
function.



=head2 FunctionSummary => L<Paws::CloudFront::FunctionSummary>

Contains configuration information and metadata about a CloudFront
function.




=cut

