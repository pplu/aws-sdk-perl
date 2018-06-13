
package Paws::ElasticBeanstalk::DescribeApplications;
  use Moose;
  has ApplicationNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeApplications');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplicationDescriptionsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeApplicationsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeApplications - Arguments for method DescribeApplications on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeApplications on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DescribeApplications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeApplications.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To view a list of applications
    # The following operation retrieves information about applications in the
    # current region:
    my $ApplicationDescriptionsMessage =
      $elasticbeanstalk->DescribeApplications();

    # Results:
    my $Applications = $ApplicationDescriptionsMessage->Applications;

   # Returns a L<Paws::ElasticBeanstalk::ApplicationDescriptionsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DescribeApplications>

=head1 ATTRIBUTES


=head2 ApplicationNames => ArrayRef[Str|Undef]

If specified, AWS Elastic Beanstalk restricts the returned descriptions
to only include those with the specified names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeApplications in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

