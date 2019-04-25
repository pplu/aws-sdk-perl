
package Paws::CloudHSM::CreateHapg;
  use Moose;
  has Label => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHapg');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::CreateHapgResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::CreateHapg - Arguments for method CreateHapg on L<Paws::CloudHSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHapg on the
L<Amazon CloudHSM|Paws::CloudHSM> service. Use the attributes of this class
as arguments to method CreateHapg.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHapg.

=head1 SYNOPSIS

    my $cloudhsm = Paws->service('CloudHSM');
    my $CreateHapgResponse = $cloudhsm->CreateHapg(
      Label => 'MyLabel',

    );

    # Results:
    my $HapgArn = $CreateHapgResponse->HapgArn;

    # Returns a L<Paws::CloudHSM::CreateHapgResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm/CreateHapg>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Label => Str

The label of the new high-availability partition group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHapg in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

