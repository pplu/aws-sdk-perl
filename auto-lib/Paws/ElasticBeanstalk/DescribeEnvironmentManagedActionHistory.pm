
package Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistory;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has MaxItems => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentManagedActionHistory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentManagedActionHistoryResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistory - Arguments for method DescribeEnvironmentManagedActionHistory on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEnvironmentManagedActionHistory on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DescribeEnvironmentManagedActionHistory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEnvironmentManagedActionHistory.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    my $DescribeEnvironmentManagedActionHistoryResult =
      $elasticbeanstalk->DescribeEnvironmentManagedActionHistory(
      EnvironmentId   => 'MyEnvironmentId',      # OPTIONAL
      EnvironmentName => 'MyEnvironmentName',    # OPTIONAL
      MaxItems        => 1,                      # OPTIONAL
      NextToken       => 'MyString',             # OPTIONAL
      );

    # Results:
    my $ManagedActionHistoryItems =
      $DescribeEnvironmentManagedActionHistoryResult->ManagedActionHistoryItems;
    my $NextToken = $DescribeEnvironmentManagedActionHistoryResult->NextToken;

# Returns a L<Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionHistoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DescribeEnvironmentManagedActionHistory>

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

The environment ID of the target environment.



=head2 EnvironmentName => Str

The name of the target environment.



=head2 MaxItems => Int

The maximum number of items to return for a single request.



=head2 NextToken => Str

The pagination token returned by a previous request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEnvironmentManagedActionHistory in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

