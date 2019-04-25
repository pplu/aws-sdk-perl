
package Paws::Transfer::TestIdentityProvider;
  use Moose;
  has ServerId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
  has UserPassword => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestIdentityProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Transfer::TestIdentityProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::TestIdentityProvider - Arguments for method TestIdentityProvider on L<Paws::Transfer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestIdentityProvider on the
L<AWS Transfer for SFTP|Paws::Transfer> service. Use the attributes of this class
as arguments to method TestIdentityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestIdentityProvider.

=head1 SYNOPSIS

    my $transfer = Paws->service('Transfer');
    my $TestIdentityProviderResponse = $transfer->TestIdentityProvider(
      ServerId     => 'MyServerId',
      UserName     => 'MyUserName',
      UserPassword => 'MyUserPassword',    # OPTIONAL
    );

    # Results:
    my $Message    = $TestIdentityProviderResponse->Message;
    my $StatusCode = $TestIdentityProviderResponse->StatusCode;
    my $Url        = $TestIdentityProviderResponse->Url;

    # Returns a L<Paws::Transfer::TestIdentityProviderResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/transfer/TestIdentityProvider>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServerId => Str

A system assigned identifier for a specific server. That server's user
authentication method is tested with a user name and password.



=head2 B<REQUIRED> UserName => Str

This request parameter is name of the user account to be tested.



=head2 UserPassword => Str

The password of the user account to be tested.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestIdentityProvider in L<Paws::Transfer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

