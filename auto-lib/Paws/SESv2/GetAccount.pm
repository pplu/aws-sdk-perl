
package Paws::SESv2::GetAccount;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/account');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::GetAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::GetAccount - Arguments for method GetAccount on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccount on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method GetAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccount.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $GetAccountResponse = $email->GetAccount();

    # Results:
    my $DedicatedIpAutoWarmupEnabled =
      $GetAccountResponse->DedicatedIpAutoWarmupEnabled;
    my $EnforcementStatus       = $GetAccountResponse->EnforcementStatus;
    my $ProductionAccessEnabled = $GetAccountResponse->ProductionAccessEnabled;
    my $SendQuota               = $GetAccountResponse->SendQuota;
    my $SendingEnabled          = $GetAccountResponse->SendingEnabled;
    my $SuppressionAttributes   = $GetAccountResponse->SuppressionAttributes;

    # Returns a L<Paws::SESv2::GetAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/GetAccount>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccount in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

