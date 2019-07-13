package Paws::CodeDeploy::AppSpecContent;
  use Moose;
  has Content => (is => 'ro', isa => 'Str', request_name => 'content', traits => ['NameInRequest']);
  has Sha256 => (is => 'ro', isa => 'Str', request_name => 'sha256', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::AppSpecContent

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::AppSpecContent object:

  $service_obj->Method(Att1 => { Content => $value, ..., Sha256 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::AppSpecContent object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

A revision for an AWS Lambda or Amazon ECS deployment that is a
YAML-formatted or JSON-formatted string. For AWS Lambda and Amazon ECS
deployments, the revision is the same as the AppSpec file. This method
replaces the deprecated C<RawString> data type.

=head1 ATTRIBUTES


=head2 Content => Str

  The YAML-formatted or JSON-formatted revision string.

For an AWS Lambda deployment, the content includes a Lambda function
name, the alias for its original version, and the alias for its
replacement version. The deployment shifts traffic from the original
version of the Lambda function to the replacement version.

For an Amazon ECS deployment, the content includes the task name,
information about the load balancer that serves traffic to the
container, and more.

For both types of deployments, the content can specify Lambda functions
that run at specified hooks, such as C<BeforeInstall>, during a
deployment.


=head2 Sha256 => Str

  The SHA256 hash value of the revision content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

