
package Paws::CloudFront::ListFunctionsResult;
  use Moose;
  has FunctionList => (is => 'ro', isa => 'Paws::CloudFront::FunctionList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListFunctionsResult

=head1 ATTRIBUTES


=head2 FunctionList => L<Paws::CloudFront::FunctionList>

A list of CloudFront functions.




=cut

