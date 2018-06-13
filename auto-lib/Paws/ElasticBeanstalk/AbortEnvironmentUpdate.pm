
package Paws::ElasticBeanstalk::AbortEnvironmentUpdate;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AbortEnvironmentUpdate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::AbortEnvironmentUpdate - Arguments for method AbortEnvironmentUpdate on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AbortEnvironmentUpdate on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method AbortEnvironmentUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AbortEnvironmentUpdate.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To abort a deployment
    # The following code aborts a running application version deployment for an
    # environment named my-env:
    $elasticbeanstalk->AbortEnvironmentUpdate(
      {
        'EnvironmentName' => 'my-env'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/AbortEnvironmentUpdate>

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

This specifies the ID of the environment with the in-progress update
that you want to cancel.



=head2 EnvironmentName => Str

This specifies the name of the environment with the in-progress update
that you want to cancel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AbortEnvironmentUpdate in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

