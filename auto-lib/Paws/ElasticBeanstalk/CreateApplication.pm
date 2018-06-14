
package Paws::ElasticBeanstalk::CreateApplication;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has ResourceLifecycleConfig => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplicationDescriptionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateApplicationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::CreateApplication - Arguments for method CreateApplication on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateApplication on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method CreateApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateApplication.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To create a new application
    # The following operation creates a new application named my-app:
    my $ApplicationDescriptionMessage = $elasticbeanstalk->CreateApplication(
      {
        'ApplicationName' => 'my-app',
        'Description'     => 'my application'
      }
    );

    # Results:
    my $Application = $ApplicationDescriptionMessage->Application;

    # Returns a L<Paws::ElasticBeanstalk::ApplicationDescriptionMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/CreateApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application.

Constraint: This name must be unique within your account. If the
specified name already exists, the action returns an
C<InvalidParameterValue> error.



=head2 Description => Str

Describes the application.



=head2 ResourceLifecycleConfig => L<Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig>

Specify an application resource lifecycle configuration to prevent your
application from accumulating too many versions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

