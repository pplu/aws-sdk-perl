
package Paws::ElasticBeanstalk::ApplyEnvironmentManagedAction;
  use Moose;
  has ActionId => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplyEnvironmentManagedAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplyEnvironmentManagedActionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ApplyEnvironmentManagedActionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplyEnvironmentManagedAction - Arguments for method ApplyEnvironmentManagedAction on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApplyEnvironmentManagedAction on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method ApplyEnvironmentManagedAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ApplyEnvironmentManagedAction.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    my $ApplyEnvironmentManagedActionResult =
      $elasticbeanstalk->ApplyEnvironmentManagedAction(
      ActionId        => 'MyString',
      EnvironmentId   => 'MyString',    # OPTIONAL
      EnvironmentName => 'MyString',    # OPTIONAL
      );

    # Results:
    my $ActionDescription =
      $ApplyEnvironmentManagedActionResult->ActionDescription;
    my $ActionId   = $ApplyEnvironmentManagedActionResult->ActionId;
    my $ActionType = $ApplyEnvironmentManagedActionResult->ActionType;
    my $Status     = $ApplyEnvironmentManagedActionResult->Status;

# Returns a L<Paws::ElasticBeanstalk::ApplyEnvironmentManagedActionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/ApplyEnvironmentManagedAction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionId => Str

The action ID of the scheduled managed action to execute.



=head2 EnvironmentId => Str

The environment ID of the target environment.



=head2 EnvironmentName => Str

The name of the target environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApplyEnvironmentManagedAction in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

