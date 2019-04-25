
package Paws::ElasticBeanstalk::DescribeEnvironmentResources;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResources');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::EnvironmentResourceDescriptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentResourcesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentResources - Arguments for method DescribeEnvironmentResources on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEnvironmentResources on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DescribeEnvironmentResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEnvironmentResources.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To view information about the AWS resources in your environment
    # The following operation retrieves information about resources in an
    # environment named my-env:
    my $EnvironmentResourceDescriptionsMessage =
      $elasticbeanstalk->DescribeEnvironmentResources(
      {
        'EnvironmentName' => 'my-env'
      }
      );

    # Results:
    my $EnvironmentResources =
      $EnvironmentResourceDescriptionsMessage->EnvironmentResources;

# Returns a L<Paws::ElasticBeanstalk::EnvironmentResourceDescriptionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DescribeEnvironmentResources>

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

The ID of the environment to retrieve AWS resource usage data.

Condition: You must specify either this or an EnvironmentName, or both.
If you do not specify either, AWS Elastic Beanstalk returns
C<MissingRequiredParameter> error.



=head2 EnvironmentName => Str

The name of the environment to retrieve AWS resource usage data.

Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
C<MissingRequiredParameter> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEnvironmentResources in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

