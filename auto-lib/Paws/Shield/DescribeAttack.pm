
package Paws::Shield::DescribeAttack;
  use Moose;
  has AttackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAttack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::DescribeAttackResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeAttack - Arguments for method DescribeAttack on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAttack on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method DescribeAttack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAttack.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $DescribeAttackResponse = $shield->DescribeAttack(
      AttackId => 'MyAttackId',

    );

    # Results:
    my $Attack = $DescribeAttackResponse->Attack;

    # Returns a L<Paws::Shield::DescribeAttackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/DescribeAttack>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttackId => Str

The unique identifier (ID) for the attack that to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAttack in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

