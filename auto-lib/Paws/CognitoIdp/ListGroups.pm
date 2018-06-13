
package Paws::CognitoIdp::ListGroups;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListGroupsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListGroups - Arguments for method ListGroups on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroups on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ListGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroups.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ListGroupsResponse = $cognito -idp->ListGroups(
      UserPoolId => 'MyUserPoolIdType',
      Limit      => 1,                    # OPTIONAL
      NextToken  => 'MyPaginationKey',    # OPTIONAL
    );

    # Results:
    my $Groups    = $ListGroupsResponse->Groups;
    my $NextToken = $ListGroupsResponse->NextToken;

    # Returns a L<Paws::CognitoIdp::ListGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-idp/ListGroups>

=head1 ATTRIBUTES


=head2 Limit => Int

The limit of the request to list groups.



=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which can be used to return the next set of items in the
list.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroups in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

