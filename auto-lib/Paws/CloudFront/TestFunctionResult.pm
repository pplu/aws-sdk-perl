
package Paws::CloudFront::TestFunctionResult;
  use Moose;
  has TestResult => (is => 'ro', isa => 'Paws::CloudFront::TestResult', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::TestFunctionResult

=head1 ATTRIBUTES


=head2 TestResult => L<Paws::CloudFront::TestResult>

An object that represents the result of running the function with the
provided event object.




=cut

