
package Paws::CloudHSM::DescribeHapg;
  use Moose;
  has HapgArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHapg');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::DescribeHapgResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::DescribeHapg - Arguments for method DescribeHapg on L<Paws::CloudHSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHapg on the
L<Amazon CloudHSM|Paws::CloudHSM> service. Use the attributes of this class
as arguments to method DescribeHapg.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHapg.

=head1 SYNOPSIS

    my $cloudhsm = Paws->service('CloudHSM');
    my $DescribeHapgResponse = $cloudhsm->DescribeHapg(
      HapgArn => 'MyHapgArn',

    );

    # Results:
    my $HapgArn              = $DescribeHapgResponse->HapgArn;
    my $HapgSerial           = $DescribeHapgResponse->HapgSerial;
    my $HsmsLastActionFailed = $DescribeHapgResponse->HsmsLastActionFailed;
    my $HsmsPendingDeletion  = $DescribeHapgResponse->HsmsPendingDeletion;
    my $HsmsPendingRegistration =
      $DescribeHapgResponse->HsmsPendingRegistration;
    my $Label                 = $DescribeHapgResponse->Label;
    my $LastModifiedTimestamp = $DescribeHapgResponse->LastModifiedTimestamp;
    my $PartitionSerialList   = $DescribeHapgResponse->PartitionSerialList;
    my $State                 = $DescribeHapgResponse->State;

    # Returns a L<Paws::CloudHSM::DescribeHapgResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm/DescribeHapg>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HapgArn => Str

The ARN of the high-availability partition group to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHapg in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

