
package Paws::ElasticBeanstalk::DeletePlatformVersion;
  use Moose;
  has PlatformArn => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePlatformVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::DeletePlatformVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeletePlatformVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DeletePlatformVersion - Arguments for method DeletePlatformVersion on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePlatformVersion on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DeletePlatformVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePlatformVersion.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    my $DeletePlatformVersionResult = $elasticbeanstalk->DeletePlatformVersion(
      PlatformArn => 'MyPlatformArn',    # OPTIONAL
    );

    # Results:
    my $PlatformSummary = $DeletePlatformVersionResult->PlatformSummary;

    # Returns a L<Paws::ElasticBeanstalk::DeletePlatformVersionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DeletePlatformVersion>

=head1 ATTRIBUTES


=head2 PlatformArn => Str

The ARN of the version of the custom platform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePlatformVersion in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

