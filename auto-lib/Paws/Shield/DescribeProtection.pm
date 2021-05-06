
package Paws::Shield::DescribeProtection;
  use Moose;
  has ProtectionId => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeProtection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::DescribeProtectionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeProtection - Arguments for method DescribeProtection on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeProtection on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method DescribeProtection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeProtection.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $DescribeProtectionResponse = $shield->DescribeProtection(
      ProtectionId => 'MyProtectionId',    # OPTIONAL
      ResourceArn  => 'MyResourceArn',     # OPTIONAL
    );

    # Results:
    my $Protection = $DescribeProtectionResponse->Protection;

    # Returns a L<Paws::Shield::DescribeProtectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/DescribeProtection>

=head1 ATTRIBUTES


=head2 ProtectionId => Str

The unique identifier (ID) for the Protection object that is described.
When submitting the C<DescribeProtection> request you must provide
either the C<ResourceArn> or the C<ProtectionID>, but not both.



=head2 ResourceArn => Str

The ARN (Amazon Resource Name) of the AWS resource for the Protection
object that is described. When submitting the C<DescribeProtection>
request you must provide either the C<ResourceArn> or the
C<ProtectionID>, but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeProtection in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

