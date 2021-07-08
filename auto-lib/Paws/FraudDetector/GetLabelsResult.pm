
package Paws::FraudDetector::GetLabelsResult;
  use Moose;
  has Labels => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::Label]', traits => ['NameInRequest'], request_name => 'labels' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetLabelsResult

=head1 ATTRIBUTES


=head2 Labels => ArrayRef[L<Paws::FraudDetector::Label>]

An array of labels.


=head2 NextToken => Str

The next page token.


=head2 _request_id => Str


=cut

1;