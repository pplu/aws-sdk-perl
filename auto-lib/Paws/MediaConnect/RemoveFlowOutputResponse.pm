
package Paws::MediaConnect::RemoveFlowOutputResponse;
  use Moose;
  has FlowArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'flowArn');
  has OutputArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputArn');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::RemoveFlowOutputResponse

=head1 ATTRIBUTES


=head2 FlowArn => Str

The ARN of the flow that is associated with the output you removed.


=head2 OutputArn => Str

The ARN of the output that was removed.


=head2 _request_id => Str


=cut

