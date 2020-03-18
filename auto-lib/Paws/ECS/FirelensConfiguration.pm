package Paws::ECS::FirelensConfiguration;
  use Moose;
  has Options => (is => 'ro', isa => 'Paws::ECS::FirelensConfigurationOptionsMap', request_name => 'options', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::FirelensConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECS::FirelensConfiguration object:

  $service_obj->Method(Att1 => { Options => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECS::FirelensConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Options

=head1 DESCRIPTION

The FireLens configuration for the container. This is used to specify
and configure a log router for container logs. For more information,
see Custom Log Routing
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html)
in the I<Amazon Elastic Container Service Developer Guide>.

=head1 ATTRIBUTES


=head2 Options => L<Paws::ECS::FirelensConfigurationOptionsMap>

  The options to use when configuring the log router. This field is
optional and can be used to specify a custom configuration file or to
add additional metadata, such as the task, task definition, cluster,
and container instance details to the log event. If specified, the
syntax to use is
C<"options":{"enable-ecs-log-metadata":"true|false","config-file-type:"s3|file","config-file-value":"arn:aws:s3:::mybucket/fluent.conf|filepath"}>.
For more information, see Creating a Task Definition that Uses a
FireLens Configuration
(https://docs.aws.amazon.com/AmazonECS/latest/developerguide/using_firelens.html#firelens-taskdef)
in the I<Amazon Elastic Container Service Developer Guide>.


=head2 B<REQUIRED> Type => Str

  The log router to use. The valid values are C<fluentd> or C<fluentbit>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

