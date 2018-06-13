
package Paws::CloudHSM::DeleteHsm;
  use Moose;
  has HsmArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteHsm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::DeleteHsmResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::DeleteHsm - Arguments for method DeleteHsm on L<Paws::CloudHSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteHsm on the
L<Amazon CloudHSM|Paws::CloudHSM> service. Use the attributes of this class
as arguments to method DeleteHsm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteHsm.

=head1 SYNOPSIS

    my $cloudhsm = Paws->service('CloudHSM');
    my $DeleteHsmResponse = $cloudhsm->DeleteHsm(
      HsmArn => 'MyHsmArn',

    );

    # Results:
    my $Status = $DeleteHsmResponse->Status;

    # Returns a L<Paws::CloudHSM::DeleteHsmResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm/DeleteHsm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HsmArn => Str

The ARN of the HSM to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteHsm in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

