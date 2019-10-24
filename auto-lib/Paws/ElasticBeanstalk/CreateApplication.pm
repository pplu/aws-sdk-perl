# Generated from callargs_class.tt

package Paws::ElasticBeanstalk::CreateApplication;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ApplicationResourceLifecycleConfig ElasticBeanstalk_Tag/;
  has ApplicationName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has ResourceLifecycleConfig => (is => 'ro', isa => ElasticBeanstalk_ApplicationResourceLifecycleConfig, predicate => 1);
  has Tags => (is => 'ro', isa => ArrayRef[ElasticBeanstalk_Tag], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateApplication');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ElasticBeanstalk::ApplicationDescriptionMessage');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateApplicationResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceLifecycleConfig' => {
                                              'class' => 'Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig',
                                              'type' => 'ElasticBeanstalk_ApplicationResourceLifecycleConfig'
                                            },
               'ApplicationName' => {
                                      'type' => 'Str'
                                    },
               'Tags' => {
                           'class' => 'Paws::ElasticBeanstalk::Tag',
                           'type' => 'ArrayRef[ElasticBeanstalk_Tag]'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ApplicationName' => 1
                  }
}
;
    return $Params_map;
  }

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
      'ApplicationName' => 'my-app',
      'Description'     => 'my application'
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



=head2 ResourceLifecycleConfig => ElasticBeanstalk_ApplicationResourceLifecycleConfig

Specify an application resource lifecycle configuration to prevent your
application from accumulating too many versions.



=head2 Tags => ArrayRef[ElasticBeanstalk_Tag]

Specifies the tags applied to the application.

Elastic Beanstalk applies these tags only to the application.
Environments that you create in the application don't inherit the tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateApplication in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

