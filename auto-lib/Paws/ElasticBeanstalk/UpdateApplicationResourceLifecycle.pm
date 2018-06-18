
package Paws::ElasticBeanstalk::UpdateApplicationResourceLifecycle;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has ResourceLifecycleConfig => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationResourceLifecycle');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplicationResourceLifecycleDescriptionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationResourceLifecycleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::UpdateApplicationResourceLifecycle - Arguments for method UpdateApplicationResourceLifecycle on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplicationResourceLifecycle on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method UpdateApplicationResourceLifecycle.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplicationResourceLifecycle.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    my $ApplicationResourceLifecycleDescriptionMessage =
      $elasticbeanstalk->UpdateApplicationResourceLifecycle(
      ApplicationName         => 'MyApplicationName',
      ResourceLifecycleConfig => {
        ServiceRole            => 'MyString',    # OPTIONAL
        VersionLifecycleConfig => {
          MaxAgeRule => {
            Enabled            => 1,
            DeleteSourceFromS3 => 1,
            MaxAgeInDays       => 1,             # OPTIONAL
          },    # OPTIONAL
          MaxCountRule => {
            Enabled            => 1,
            DeleteSourceFromS3 => 1,
            MaxCount           => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },

      );

    # Results:
    my $ApplicationName =
      $ApplicationResourceLifecycleDescriptionMessage->ApplicationName;
    my $ResourceLifecycleConfig =
      $ApplicationResourceLifecycleDescriptionMessage->ResourceLifecycleConfig;

# Returns a L<Paws::ElasticBeanstalk::ApplicationResourceLifecycleDescriptionMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/UpdateApplicationResourceLifecycle>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application.



=head2 B<REQUIRED> ResourceLifecycleConfig => L<Paws::ElasticBeanstalk::ApplicationResourceLifecycleConfig>

The lifecycle configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplicationResourceLifecycle in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

