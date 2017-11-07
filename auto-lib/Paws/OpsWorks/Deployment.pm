package Paws::OpsWorks::Deployment;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str');
  has Command => (is => 'ro', isa => 'Paws::OpsWorks::DeploymentCommand');
  has Comment => (is => 'ro', isa => 'Str');
  has CompletedAt => (is => 'ro', isa => 'Str');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has CustomJson => (is => 'ro', isa => 'Str');
  has DeploymentId => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has IamUserArn => (is => 'ro', isa => 'Str');
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StackId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::Deployment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::Deployment object:

  $service_obj->Method(Att1 => { AppId => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::Deployment object:

  $result = $service_obj->Method(...);
  $result->Att1->AppId

=head1 DESCRIPTION

Describes a deployment of a stack or app.

=head1 ATTRIBUTES


=head2 AppId => Str

  The app ID.


=head2 Command => L<Paws::OpsWorks::DeploymentCommand>

  


=head2 Comment => Str

  A user-defined comment.


=head2 CompletedAt => Str

  Date when the deployment completed.


=head2 CreatedAt => Str

  Date when the deployment was created.


=head2 CustomJson => Str

  A string that contains user-defined custom JSON. It can be used to
override the corresponding default stack configuration attribute values
for stack or to pass data to recipes. The string should be in the
following format:

C<"{\"key1\": \"value1\", \"key2\": \"value2\",...}">

For more information on custom JSON, see Use Custom JSON to Modify the
Stack Configuration Attributes
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-json.html).


=head2 DeploymentId => Str

  The deployment ID.


=head2 Duration => Int

  The deployment duration.


=head2 IamUserArn => Str

  The user's IAM ARN.


=head2 InstanceIds => ArrayRef[Str|Undef]

  The IDs of the target instances.


=head2 StackId => Str

  The stack ID.


=head2 Status => Str

  The deployment status:

=over

=item *

running

=item *

successful

=item *

failed

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

