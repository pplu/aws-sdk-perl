
package Paws::CloudHSM::DescribeHsm;
  use Moose;
  has HsmArn => (is => 'ro', isa => 'Str');
  has HsmSerialNumber => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHsm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::DescribeHsmResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::DescribeHsm - Arguments for method DescribeHsm on L<Paws::CloudHSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHsm on the
L<Amazon CloudHSM|Paws::CloudHSM> service. Use the attributes of this class
as arguments to method DescribeHsm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHsm.

=head1 SYNOPSIS

    my $cloudhsm = Paws->service('CloudHSM');
    my $DescribeHsmResponse = $cloudhsm->DescribeHsm(
      HsmArn          => 'MyHsmArn',             # OPTIONAL
      HsmSerialNumber => 'MyHsmSerialNumber',    # OPTIONAL
    );

    # Results:
    my $AvailabilityZone      = $DescribeHsmResponse->AvailabilityZone;
    my $EniId                 = $DescribeHsmResponse->EniId;
    my $EniIp                 = $DescribeHsmResponse->EniIp;
    my $HsmArn                = $DescribeHsmResponse->HsmArn;
    my $HsmType               = $DescribeHsmResponse->HsmType;
    my $IamRoleArn            = $DescribeHsmResponse->IamRoleArn;
    my $Partitions            = $DescribeHsmResponse->Partitions;
    my $SerialNumber          = $DescribeHsmResponse->SerialNumber;
    my $ServerCertLastUpdated = $DescribeHsmResponse->ServerCertLastUpdated;
    my $ServerCertUri         = $DescribeHsmResponse->ServerCertUri;
    my $SoftwareVersion       = $DescribeHsmResponse->SoftwareVersion;
    my $SshKeyLastUpdated     = $DescribeHsmResponse->SshKeyLastUpdated;
    my $SshPublicKey          = $DescribeHsmResponse->SshPublicKey;
    my $Status                = $DescribeHsmResponse->Status;
    my $StatusDetails         = $DescribeHsmResponse->StatusDetails;
    my $SubnetId              = $DescribeHsmResponse->SubnetId;
    my $SubscriptionEndDate   = $DescribeHsmResponse->SubscriptionEndDate;
    my $SubscriptionStartDate = $DescribeHsmResponse->SubscriptionStartDate;
    my $SubscriptionType      = $DescribeHsmResponse->SubscriptionType;
    my $VendorName            = $DescribeHsmResponse->VendorName;
    my $VpcId                 = $DescribeHsmResponse->VpcId;

    # Returns a L<Paws::CloudHSM::DescribeHsmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm/DescribeHsm>

=head1 ATTRIBUTES


=head2 HsmArn => Str

The ARN of the HSM. Either the C<HsmArn> or the C<SerialNumber>
parameter must be specified.



=head2 HsmSerialNumber => Str

The serial number of the HSM. Either the C<HsmArn> or the
C<HsmSerialNumber> parameter must be specified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHsm in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

