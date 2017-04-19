
package Paws::CodeStar::DeleteUserProfileResult;
  use Moose;
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DeleteUserProfileResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) of the user deleted from AWS CodeStar.


=head2 _request_id => Str


=cut

1;