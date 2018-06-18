
package Paws::ElasticBeanstalk::DescribeEnvironmentHealth;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::DescribeEnvironmentHealthResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentHealthResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentHealth - Arguments for method DescribeEnvironmentHealth on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEnvironmentHealth on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DescribeEnvironmentHealth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEnvironmentHealth.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To view environment health
    # The following operation retrieves overall health information for an
    # environment named my-env:
    my $DescribeEnvironmentHealthResult =
      $elasticbeanstalk->DescribeEnvironmentHealth(
      {
        'AttributeNames'  => ['All'],
        'EnvironmentName' => 'my-env'
      }
      );

    # Results:
    my $ApplicationMetrics =
      $DescribeEnvironmentHealthResult->ApplicationMetrics;
    my $Causes          = $DescribeEnvironmentHealthResult->Causes;
    my $Color           = $DescribeEnvironmentHealthResult->Color;
    my $EnvironmentName = $DescribeEnvironmentHealthResult->EnvironmentName;
    my $HealthStatus    = $DescribeEnvironmentHealthResult->HealthStatus;
    my $InstancesHealth = $DescribeEnvironmentHealthResult->InstancesHealth;
    my $RefreshedAt     = $DescribeEnvironmentHealthResult->RefreshedAt;

  # Returns a L<Paws::ElasticBeanstalk::DescribeEnvironmentHealthResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DescribeEnvironmentHealth>

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

Specify the response elements to return. To retrieve all attributes,
set to C<All>. If no attribute names are specified, returns the name of
the environment.



=head2 EnvironmentId => Str

Specify the environment by ID.

You must specify either this or an EnvironmentName, or both.



=head2 EnvironmentName => Str

Specify the environment by name.

You must specify either this or an EnvironmentName, or both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEnvironmentHealth in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

