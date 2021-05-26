
package Paws::Shield::AssociateHealthCheck;
  use Moose;
  has HealthCheckArn => (is => 'ro', isa => 'Str', required => 1);
  has ProtectionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateHealthCheck');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::AssociateHealthCheckResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::AssociateHealthCheck - Arguments for method AssociateHealthCheck on L<Paws::Shield>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateHealthCheck on the
L<AWS Shield|Paws::Shield> service. Use the attributes of this class
as arguments to method AssociateHealthCheck.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateHealthCheck.

=head1 SYNOPSIS

    my $shield = Paws->service('Shield');
    my $AssociateHealthCheckResponse = $shield->AssociateHealthCheck(
      HealthCheckArn => 'MyHealthCheckArn',
      ProtectionId   => 'MyProtectionId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/shield/AssociateHealthCheck>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheckArn => Str

The Amazon Resource Name (ARN) of the health check to associate with
the protection.



=head2 B<REQUIRED> ProtectionId => Str

The unique identifier (ID) for the Protection object to add the health
check association to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateHealthCheck in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

