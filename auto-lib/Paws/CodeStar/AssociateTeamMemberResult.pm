
package Paws::CodeStar::AssociateTeamMemberResult;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::AssociateTeamMemberResult

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

The user- or system-generated token from the initial request that can
be used to repeat the request.


=head2 _request_id => Str


=cut

1;