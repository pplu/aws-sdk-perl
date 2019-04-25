
package Paws::ElasticBeanstalk::RequestEnvironmentInfo;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has InfoType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestEnvironmentInfo');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::RequestEnvironmentInfo - Arguments for method RequestEnvironmentInfo on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RequestEnvironmentInfo on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method RequestEnvironmentInfo.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RequestEnvironmentInfo.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To request tailed logs
    # The following operation requests logs from an environment named my-env:
    $elasticbeanstalk->RequestEnvironmentInfo(
      {
        'EnvironmentName' => 'my-env',
        'InfoType'        => 'tail'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/RequestEnvironmentInfo>

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

The ID of the environment of the requested data.

If no such environment is found, C<RequestEnvironmentInfo> returns an
C<InvalidParameterValue> error.

Condition: You must specify either this or an EnvironmentName, or both.
If you do not specify either, AWS Elastic Beanstalk returns
C<MissingRequiredParameter> error.



=head2 EnvironmentName => Str

The name of the environment of the requested data.

If no such environment is found, C<RequestEnvironmentInfo> returns an
C<InvalidParameterValue> error.

Condition: You must specify either this or an EnvironmentId, or both.
If you do not specify either, AWS Elastic Beanstalk returns
C<MissingRequiredParameter> error.



=head2 B<REQUIRED> InfoType => Str

The type of information to request.

Valid values are: C<"tail">, C<"bundle">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RequestEnvironmentInfo in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

