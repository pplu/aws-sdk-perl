
package Paws::GlueDataBrew::SendProjectSessionActionResponse;
  use Moose;
  has ActionId => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Result => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlueDataBrew::SendProjectSessionActionResponse

=head1 ATTRIBUTES


=head2 ActionId => Int

A unique identifier for the action that was performed.


=head2 B<REQUIRED> Name => Str

The name of the project that was affected by the action.


=head2 Result => Str

A message indicating the result of performing the action.


=head2 _request_id => Str


=cut

