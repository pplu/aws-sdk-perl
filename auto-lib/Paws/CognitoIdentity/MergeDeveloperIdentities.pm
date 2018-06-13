
package Paws::CognitoIdentity::MergeDeveloperIdentities;
  use Moose;
  has DestinationUserIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DeveloperProviderName => (is => 'ro', isa => 'Str', required => 1);
  has IdentityPoolId => (is => 'ro', isa => 'Str', required => 1);
  has SourceUserIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'MergeDeveloperIdentities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdentity::MergeDeveloperIdentitiesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::MergeDeveloperIdentities - Arguments for method MergeDeveloperIdentities on L<Paws::CognitoIdentity>

=head1 DESCRIPTION

This class represents the parameters used for calling the method MergeDeveloperIdentities on the
L<Amazon Cognito Identity|Paws::CognitoIdentity> service. Use the attributes of this class
as arguments to method MergeDeveloperIdentities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to MergeDeveloperIdentities.

=head1 SYNOPSIS

    my $cognito-identity = Paws->service('CognitoIdentity');
    my $MergeDeveloperIdentitiesResponse =
      $cognito -identity->MergeDeveloperIdentities(
      DestinationUserIdentifier => 'MyDeveloperUserIdentifier',
      DeveloperProviderName     => 'MyDeveloperProviderName',
      IdentityPoolId            => 'MyIdentityPoolId',
      SourceUserIdentifier      => 'MyDeveloperUserIdentifier',

      );

    # Results:
    my $IdentityId = $MergeDeveloperIdentitiesResponse->IdentityId;

  # Returns a L<Paws::CognitoIdentity::MergeDeveloperIdentitiesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cognito-identity/MergeDeveloperIdentities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationUserIdentifier => Str

User identifier for the destination user. The value should be a
C<DeveloperUserIdentifier>.



=head2 B<REQUIRED> DeveloperProviderName => Str

The "domain" by which Cognito will refer to your users. This is a
(pseudo) domain name that you provide while creating an identity pool.
This name acts as a placeholder that allows your backend and the
Cognito service to communicate about the developer provider. For the
C<DeveloperProviderName>, you can use letters as well as period (.),
underscore (_), and dash (-).



=head2 B<REQUIRED> IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.



=head2 B<REQUIRED> SourceUserIdentifier => Str

User identifier for the source user. The value should be a
C<DeveloperUserIdentifier>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method MergeDeveloperIdentities in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

