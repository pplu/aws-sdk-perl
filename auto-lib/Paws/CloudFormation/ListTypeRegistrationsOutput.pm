
package Paws::CloudFormation::ListTypeRegistrationsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistrationTokenList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListTypeRegistrationsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If the request doesn't return all of the remaining results,
C<NextToken> is set to a token. To retrieve the next set of results,
call this action again and assign that token to the request object's
C<NextToken> parameter. If the request returns all results,
C<NextToken> is set to C<null>.


=head2 RegistrationTokenList => ArrayRef[Str|Undef]

A list of type registration tokens.

Use C< DescribeTypeRegistration > to return detailed information about
a type registration request.


=head2 _request_id => Str


=cut

