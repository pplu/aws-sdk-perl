
package Paws::SSM::StartAssociationsOnce;
  use Moose;
  has AssociationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartAssociationsOnce');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::StartAssociationsOnceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartAssociationsOnce - Arguments for method StartAssociationsOnce on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartAssociationsOnce on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method StartAssociationsOnce.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartAssociationsOnce.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $StartAssociationsOnceResult = $ssm->StartAssociationsOnce(
      AssociationIds => [ 'MyAssociationId', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/StartAssociationsOnce>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssociationIds => ArrayRef[Str|Undef]

The association IDs that you want to execute immediately and only one
time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartAssociationsOnce in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

