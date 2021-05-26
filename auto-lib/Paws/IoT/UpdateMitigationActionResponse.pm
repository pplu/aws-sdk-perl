
package Paws::IoT::UpdateMitigationActionResponse;
  use Moose;
  has ActionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionArn');
  has ActionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateMitigationActionResponse

=head1 ATTRIBUTES


=head2 ActionArn => Str

The ARN for the new mitigation action.


=head2 ActionId => Str

A unique identifier for the mitigation action.


=head2 _request_id => Str


=cut

