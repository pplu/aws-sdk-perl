
package Paws::ElasticBeanstalk::DeleteApplicationVersion;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has DeleteSourceBundle => (is => 'ro', isa => 'Bool');
  has VersionLabel => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteApplicationVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DeleteApplicationVersion - Arguments for method DeleteApplicationVersion on L<Paws::ElasticBeanstalk>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteApplicationVersion on the
L<AWS Elastic Beanstalk|Paws::ElasticBeanstalk> service. Use the attributes of this class
as arguments to method DeleteApplicationVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteApplicationVersion.

=head1 SYNOPSIS

    my $elasticbeanstalk = Paws->service('ElasticBeanstalk');
    # To delete an application version
    # The following operation deletes an application version named
    # 22a0-stage-150819_182129 for an application named my-app:
    $elasticbeanstalk->DeleteApplicationVersion(
      {
        'ApplicationName'    => 'my-app',
        'DeleteSourceBundle' => 1,
        'VersionLabel'       => '22a0-stage-150819_182129'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticbeanstalk/DeleteApplicationVersion>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of the application to which the version belongs.



=head2 DeleteSourceBundle => Bool

Set to C<true> to delete the source bundle from your storage bucket.
Otherwise, the application version is deleted only from Elastic
Beanstalk and the source bundle remains in Amazon S3.



=head2 B<REQUIRED> VersionLabel => Str

The label of the version to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteApplicationVersion in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

