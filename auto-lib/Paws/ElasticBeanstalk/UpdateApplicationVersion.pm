
package Paws::ElasticBeanstalk::UpdateApplicationVersion;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateApplicationVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::UpdateApplicationVersion - Arguments for method UpdateApplicationVersion on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplicationVersion on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method UpdateApplicationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplicationVersion.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To change an application version's description
    # The following operation updates the description of an application version
    # named 22a0-stage-150819_185942:
    my $ApplicationVersionDescriptionMessage =
      $elasticbeanstalk->UpdateApplicationVersion(
      {
        'ApplicationName' => 'my-app',
        'Description'     => 'new description',
        'VersionLabel'    => '22a0-stage-150819_185942'
      }
      );

    # Results:
    my $ApplicationVersion =
      $ApplicationVersionDescriptionMessage->ApplicationVersion;

# Returns a L<Paws::ElasticBeanstalk::ApplicationVersionDescriptionMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/UpdateApplicationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application associated with this version.

If no application is found with this name, C<UpdateApplication> returns
an C<InvalidParameterValue> error.



=head2 Description => Str

A new description for this version.



=head2 B<REQUIRED> VersionLabel => Str

The name of the version to update.

If no application version is found with this label,
C<UpdateApplication> returns an C<InvalidParameterValue> error.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplicationVersion in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

