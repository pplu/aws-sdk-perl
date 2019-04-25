
package Paws::ElasticBeanstalk::DescribeInstancesHealth;
  use Moose;
  has AttributeNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstancesHealth');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::DescribeInstancesHealthResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeInstancesHealthResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeInstancesHealth - Arguments for method DescribeInstancesHealth on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstancesHealth on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DescribeInstancesHealth.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstancesHealth.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To view environment health
    # The following operation retrieves health information for instances in an
    # environment named my-env:
    my $DescribeInstancesHealthResult =
      $elasticbeanstalk->DescribeInstancesHealth(
      {
        'AttributeNames'  => ['All'],
        'EnvironmentName' => 'my-env'
      }
      );

    # Results:
    my $InstanceHealthList = $DescribeInstancesHealthResult->InstanceHealthList;
    my $RefreshedAt        = $DescribeInstancesHealthResult->RefreshedAt;

    # Returns a L<Paws::ElasticBeanstalk::DescribeInstancesHealthResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DescribeInstancesHealth>

=head1 ATTRIBUTES


=head2 AttributeNames => ArrayRef[Str|Undef]

Specifies the response elements you wish to receive. To retrieve all
attributes, set to C<All>. If no attribute names are specified, returns
a list of instances.



=head2 EnvironmentId => Str

Specify the AWS Elastic Beanstalk environment by ID.



=head2 EnvironmentName => Str

Specify the AWS Elastic Beanstalk environment by name.



=head2 NextToken => Str

Specify the pagination token returned by a previous call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstancesHealth in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

