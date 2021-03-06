
package Paws::Organizations::MoveAccount;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has DestinationParentId => (is => 'ro', isa => 'Str', required => 1);
  has SourceParentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MoveAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::MoveAccount - Arguments for method MoveAccount on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MoveAccount on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method MoveAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MoveAccount.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
  # To move an OU or account to another OU or the root
  # The following example shows how to move a member account from the root to an
  # OU:/n/n
    $organizations->MoveAccount(
      'AccountId'           => 333333333333,
      'DestinationParentId' => 'ou-examplerootid111-exampleouid111',
      'SourceParentId'      => 'r-examplerootid111'
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/MoveAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The unique identifier (ID) of the account that you want to move.

The regex pattern (http://wikipedia.org/wiki/regex) for an account ID
string requires exactly 12 digits.



=head2 B<REQUIRED> DestinationParentId => Str

The unique identifier (ID) of the root or organizational unit that you
want to move the account to.

The regex pattern (http://wikipedia.org/wiki/regex) for a parent ID
string requires one of the following:

=over

=item *

B<Root> - A string that begins with "r-" followed by from 4 to 32
lowercase letters or digits.

=item *

B<Organizational unit (OU)> - A string that begins with "ou-" followed
by from 4 to 32 lowercase letters or digits (the ID of the root that
the OU is in). This string is followed by a second "-" dash and from 8
to 32 additional lowercase letters or digits.

=back




=head2 B<REQUIRED> SourceParentId => Str

The unique identifier (ID) of the root or organizational unit that you
want to move the account from.

The regex pattern (http://wikipedia.org/wiki/regex) for a parent ID
string requires one of the following:

=over

=item *

B<Root> - A string that begins with "r-" followed by from 4 to 32
lowercase letters or digits.

=item *

B<Organizational unit (OU)> - A string that begins with "ou-" followed
by from 4 to 32 lowercase letters or digits (the ID of the root that
the OU is in). This string is followed by a second "-" dash and from 8
to 32 additional lowercase letters or digits.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MoveAccount in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

