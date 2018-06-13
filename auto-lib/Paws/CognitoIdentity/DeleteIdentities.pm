
package Paws::CognitoIdentity::DeleteIdentities;
  use Moose;
  has IdentityIdsToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteIdentities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::DeleteIdentitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::DeleteIdentities - Arguments for method DeleteIdentities on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteIdentities on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method DeleteIdentities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteIdentities.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $DeleteIdentitiesResponse = $cognito -identity->DeleteIdentities(
      IdentityIdsToDelete => [
        'MyIdentityId', ...    # min: 1, max: 55
      ],

    );

    # Results:
    my $UnprocessedIdentityIds =
      $DeleteIdentitiesResponse->UnprocessedIdentityIds;

    # Returns a L<Paws::CognitoIdentity::DeleteIdentitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/DeleteIdentities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdentityIdsToDelete => ArrayRef[Str|Undef]

A list of 1-60 identities that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteIdentities in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

