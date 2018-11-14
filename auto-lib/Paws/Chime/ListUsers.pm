
package Paws::Chime::ListUsers;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-results');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'next-token');
  has UserEmail => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'user-email');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/console/accounts/{accountId}/users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::ListUsersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListUsers - Arguments for method ListUsers on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsers on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsers.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListUsersResponse = $chime->ListUsers(
      AccountId  => 'MyNonEmptyString',
      MaxResults => 1,                    # OPTIONAL
      NextToken  => 'MyString',           # OPTIONAL
      UserEmail  => 'MyEmailAddress',     # OPTIONAL
    );

    # Results:
    my $NextToken = $ListUsersResponse->NextToken;
    my $Users     = $ListUsersResponse->Users;

    # Returns a L<Paws::Chime::ListUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListUsers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.



=head2 MaxResults => Int

The maximum number of results to return in a single call. Defaults to
100.



=head2 NextToken => Str

The token to use to retrieve the next page of results.



=head2 UserEmail => Str

Optional. The user email address used to filter results. Maximum 1.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsers in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

