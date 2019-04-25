
package Paws::ElasticBeanstalk::DescribeApplicationVersions;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has VersionLabels => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationVersionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeApplicationVersions - Arguments for method DescribeApplicationVersions on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplicationVersions on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DescribeApplicationVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplicationVersions.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To view information about an application version
    # The following operation retrieves information about an application version
    # labeled v2:
    my $ApplicationVersionDescriptionsMessage =
      $elasticbeanstalk->DescribeApplicationVersions(
      {
        'ApplicationName' => 'my-app',
        'VersionLabels'   => ['v2']
      }
      );

    # Results:
    my $ApplicationVersions =
      $ApplicationVersionDescriptionsMessage->ApplicationVersions;

# Returns a L<Paws::ElasticBeanstalk::ApplicationVersionDescriptionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DescribeApplicationVersions>

=head1 ATTRIBUTES


=head2 ApplicationName => Str

Specify an application name to show only application versions for that
application.



=head2 MaxRecords => Int

For a paginated request. Specify a maximum number of application
versions to include in each response.

If no C<MaxRecords> is specified, all available application versions
are retrieved in a single response.



=head2 NextToken => Str

For a paginated request. Specify a token from a previous response page
to retrieve the next response page. All other parameter values must be
identical to the ones specified in the initial request.

If no C<NextToken> is specified, the first page is retrieved.



=head2 VersionLabels => ArrayRef[Str|Undef]

Specify a version label to show a specific application version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplicationVersions in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

