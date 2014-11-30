
package Paws::CognitoSync::UpdateRecordsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Records => (is => 'ro', isa => 'ArrayRef[Paws::CognitoSync::Record]');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoSync::UpdateRecordsResponse

=head1 ATTRIBUTES

=head2 Records => ArrayRef[Paws::CognitoSync::Record]

  

A list of records that have been updated.











=cut

