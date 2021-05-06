
package Paws::FraudDetector::DescribeModelVersionsResult;
  use Moose;
  has ModelVersionDetails => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::ModelVersionDetail]', traits => ['NameInRequest'], request_name => 'modelVersionDetails' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::DescribeModelVersionsResult

=head1 ATTRIBUTES


=head2 ModelVersionDetails => ArrayRef[L<Paws::FraudDetector::ModelVersionDetail>]

The model version details.


=head2 NextToken => Str

The next token.


=head2 _request_id => Str


=cut

1;