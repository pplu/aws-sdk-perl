
package Paws::CloudHSMv2::DeleteHsm;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has EniId => (is => 'ro', isa => 'Str');
  has EniIp => (is => 'ro', isa => 'Str');
  has HsmId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHsm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::DeleteHsmResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::DeleteHsm - Arguments for method DeleteHsm on L<Paws::CloudHSMv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteHsm on the
L<AWS CloudHSM V2|Paws::CloudHSMv2> service. Use the attributes of this class
as arguments to method DeleteHsm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteHsm.

=head1 SYNOPSIS

    my $cloudhsmv2 = Paws->service('CloudHSMv2');
    my $DeleteHsmResponse = $cloudhsmv2->DeleteHsm(
      ClusterId => 'MyClusterId',
      EniId     => 'MyEniId',        # OPTIONAL
      EniIp     => 'MyIpAddress',    # OPTIONAL
      HsmId     => 'MyHsmId',        # OPTIONAL
    );

    # Results:
    my $HsmId = $DeleteHsmResponse->HsmId;

    # Returns a L<Paws::CloudHSMv2::DeleteHsmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsmv2/DeleteHsm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The identifier (ID) of the cluster that contains the HSM that you are
deleting.



=head2 EniId => Str

The identifier (ID) of the elastic network interface (ENI) of the HSM
that you are deleting.



=head2 EniIp => Str

The IP address of the elastic network interface (ENI) of the HSM that
you are deleting.



=head2 HsmId => Str

The identifier (ID) of the HSM that you are deleting.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteHsm in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

