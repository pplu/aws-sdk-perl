
package Paws::CloudFront::CreateFunctionResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has FunctionSummary => (is => 'ro', isa => 'Paws::CloudFront::FunctionSummary', traits => ['ParamInBody']);
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateFunctionResult

=head1 ATTRIBUTES


=head2 ETag => Str

The version identifier for the current version of the CloudFront
function.



=head2 FunctionSummary => L<Paws::CloudFront::FunctionSummary>

Contains configuration information and metadata about a CloudFront
function.



=head2 Location => Str

The URL of the CloudFront function. Use the URL to manage the function
with the CloudFront API.




=cut

