
package Paws::CognitoSync::UpdateRecordsResponse;
  use Moose;
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::CognitoSync::Record]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::UpdateRecordsResponse

=head1 ATTRIBUTES


=head2 Records => ArrayRef[L<Paws::CognitoSync::Record>]

A list of records that have been updated.


=head2 _request_id => Str


=cut

