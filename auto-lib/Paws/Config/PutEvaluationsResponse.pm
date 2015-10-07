
package Paws::Config::PutEvaluationsResponse;
  use Moose;
  has FailedEvaluations => (is => 'ro', isa => 'ArrayRef[Paws::Config::Evaluation]');


### main pod documentation begin ###

=head1 NAME

Paws::Config::PutEvaluationsResponse

=head1 ATTRIBUTES

=head2 FailedEvaluations => ArrayRef[Paws::Config::Evaluation]

  

Requests that failed because of a client or server error.











=cut

1;