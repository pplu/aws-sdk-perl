
package Paws::CloudHSM::ModifyHapg;
  use Moose;
  has HapgArn => (is => 'ro', isa => 'Str', required => 1);
  has Label => (is => 'ro', isa => 'Str');
  has PartitionSerialList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyHapg');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::ModifyHapgResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::ModifyHapg - Arguments for method ModifyHapg on L<Paws::CloudHSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyHapg on the
L<Amazon CloudHSM|Paws::CloudHSM> service. Use the attributes of this class
as arguments to method ModifyHapg.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyHapg.

=head1 SYNOPSIS

    my $cloudhsm = Paws->service('CloudHSM');
    my $ModifyHapgResponse = $cloudhsm->ModifyHapg(
      HapgArn             => 'MyHapgArn',
      Label               => 'MyLabel',                       # OPTIONAL
      PartitionSerialList => [ 'MyPartitionSerial', ... ],    # OPTIONAL
    );

    # Results:
    my $HapgArn = $ModifyHapgResponse->HapgArn;

    # Returns a L<Paws::CloudHSM::ModifyHapgResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudhsm/ModifyHapg>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HapgArn => Str

The ARN of the high-availability partition group to modify.



=head2 Label => Str

The new label for the high-availability partition group.



=head2 PartitionSerialList => ArrayRef[Str|Undef]

The list of partition serial numbers to make members of the
high-availability partition group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyHapg in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

