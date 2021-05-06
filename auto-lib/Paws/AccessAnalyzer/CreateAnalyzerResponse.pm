
package Paws::AccessAnalyzer::CreateAnalyzerResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AccessAnalyzer::CreateAnalyzerResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the analyzer that was created by the request.


=head2 _request_id => Str


=cut

