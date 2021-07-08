
package Paws::CloudFront::GetFunctionResult;
  use Moose;
  has ContentType => (is => 'ro', isa => 'Str', header_name => 'Content-Type', traits => ['ParamInHeader']);
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has FunctionCode => (is => 'ro', isa => 'Str', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetFunctionResult

=head1 ATTRIBUTES


=head2 ContentType => Str

The content type (media type) of the response.



=head2 ETag => Str

The version identifier for the current version of the CloudFront
function.



=head2 FunctionCode => Str

The function code of a CloudFront function.




=cut

