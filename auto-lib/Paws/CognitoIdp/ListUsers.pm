
package Paws::CognitoIdp::ListUsers;
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filter => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has PaginationToken => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListUsersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUsers - Arguments for method ListUsers on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsers on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ListUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsers.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ListUsersResponse = $cognito -idp->ListUsers(
      UserPoolId      => 'MyUserPoolIdType',
      AttributesToGet => [
        'MyAttributeNameType', ...    # min: 1, max: 32
      ],                              # OPTIONAL
      Filter          => 'MyUserFilterType',               # OPTIONAL
      Limit           => 1,                                # OPTIONAL
      PaginationToken => 'MySearchPaginationTokenType',    # OPTIONAL
    );

    # Results:
    my $PaginationToken = $ListUsersResponse->PaginationToken;
    my $Users           = $ListUsersResponse->Users;

    # Returns a L<Paws::CognitoIdp::ListUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ListUsers>

=head1 ATTRIBUTES


=head2 AttributesToGet => ArrayRef[Str|Undef]

An array of strings, where each string is the name of a user attribute
to be returned for each user in the search results. If the array is
null, all attributes are returned.



=head2 Filter => Str

A filter string of the form "I<AttributeName> I<Filter-Type>
"I<AttributeValue>"". Quotation marks within the filter string must be
escaped using the backslash (\) character. For example, "C<family_name>
= \"Reddy\"".

=over

=item *

I<AttributeName>: The name of the attribute to search for. You can only
search for one attribute at a time.

=item *

I<Filter-Type>: For an exact match, use =, for example, "C<given_name>
= \"Jon\"". For a prefix ("starts with") match, use ^=, for example,
"C<given_name> ^= \"Jon\"".

=item *

I<AttributeValue>: The attribute value that must be matched for each
user.

=back

If the filter string is empty, C<ListUsers> returns all users in the
user pool.

You can only search for the following standard attributes:

=over

=item *

C<username> (case-sensitive)

=item *

C<email>

=item *

C<phone_number>

=item *

C<name>

=item *

C<given_name>

=item *

C<family_name>

=item *

C<preferred_username>

=item *

C<cognito:user_status> (called B<Status> in the Console)
(case-insensitive)

=item *

C<status (called B<Enabled> in the Console) (case-sensitive)>

=item *

C<sub>

=back

Custom attributes are not searchable.

For more information, see Searching for Users Using the ListUsers API
(http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api)
and Examples of Using the ListUsers API
(http://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples)
in the I<Amazon Cognito Developer Guide>.



=head2 Limit => Int

Maximum number of users to be returned.



=head2 PaginationToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool on which the search should be
performed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsers in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

