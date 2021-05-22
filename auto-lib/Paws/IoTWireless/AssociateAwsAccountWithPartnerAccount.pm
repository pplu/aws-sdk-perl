
package Paws::IoTWireless::AssociateAwsAccountWithPartnerAccount;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Sidewalk => (is => 'ro', isa => 'Paws::IoTWireless::SidewalkAccountInfo', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateAwsAccountWithPartnerAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/partner-accounts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::AssociateAwsAccountWithPartnerAccountResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::AssociateAwsAccountWithPartnerAccount - Arguments for method AssociateAwsAccountWithPartnerAccount on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateAwsAccountWithPartnerAccount on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method AssociateAwsAccountWithPartnerAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateAwsAccountWithPartnerAccount.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $AssociateAwsAccountWithPartnerAccountResponse =
      $api . iotwireless->AssociateAwsAccountWithPartnerAccount(
      Sidewalk => {
        AmazonId => 'MyAmazonId',    # max: 2048; OPTIONAL
        AppServerPrivateKey =>
          'MyAppServerPrivateKey',    # min: 1, max: 4096; OPTIONAL
      },
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Tags               => [
        {
          Key   => 'MyTagKey',                         # min: 1, max: 128
          Value => 'MyTagValue',                       # max: 256

        },
        ...
      ],                                               # OPTIONAL
      );

    # Results:
    my $Arn      = $AssociateAwsAccountWithPartnerAccountResponse->Arn;
    my $Sidewalk = $AssociateAwsAccountWithPartnerAccountResponse->Sidewalk;

# Returns a L<Paws::IoTWireless::AssociateAwsAccountWithPartnerAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/AssociateAwsAccountWithPartnerAccount>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Each resource must have a unique client request token. If you try to
create a new resource with the same token as a resource that already
exists, an exception occurs. If you omit this value, AWS SDKs will
automatically generate a unique client request.



=head2 B<REQUIRED> Sidewalk => L<Paws::IoTWireless::SidewalkAccountInfo>

The Sidewalk account credentials.



=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]

The tags to attach to the specified resource. Tags are metadata that
you can use to manage a resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateAwsAccountWithPartnerAccount in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

