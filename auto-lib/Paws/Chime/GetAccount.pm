
package Paws::Chime::GetAccount;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'accountId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/console/accounts/{accountId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chime::GetAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::GetAccount - Arguments for method GetAccount on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccount on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method GetAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccount.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $GetAccountResponse = $chime->GetAccount(
      AccountId => 'MyNonEmptyString',

    );

    # Results:
    my $Account = $GetAccountResponse->Account;

    # Returns a L<Paws::Chime::GetAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/GetAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The Amazon Chime account ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccount in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

