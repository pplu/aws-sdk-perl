
package Paws::IoTWireless::GetPartnerAccount;
  use Moose;
  has PartnerAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'PartnerAccountId', required => 1);
  has PartnerType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'partnerType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetPartnerAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/partner-accounts/{PartnerAccountId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::GetPartnerAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::GetPartnerAccount - Arguments for method GetPartnerAccount on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetPartnerAccount on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method GetPartnerAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetPartnerAccount.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $GetPartnerAccountResponse = $api . iotwireless->GetPartnerAccount(
      PartnerAccountId => 'MyPartnerAccountId',
      PartnerType      => 'Sidewalk',

    );

    # Results:
    my $AccountLinked = $GetPartnerAccountResponse->AccountLinked;
    my $Sidewalk      = $GetPartnerAccountResponse->Sidewalk;

    # Returns a L<Paws::IoTWireless::GetPartnerAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/GetPartnerAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PartnerAccountId => Str

The partner account ID to disassociate from the AWS account.



=head2 B<REQUIRED> PartnerType => Str

The partner type.

Valid values are: C<"Sidewalk">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetPartnerAccount in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

