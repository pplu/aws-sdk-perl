package Paws::OpsWorks::DeploymentCommand;
  use Moose;
  has Args => (is => 'ro', isa => 'Paws::OpsWorks::DeploymentCommandArgs');
  has Name => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DeploymentCommand

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::DeploymentCommand object:

  $service_obj->Method(Att1 => { Args => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::DeploymentCommand object:

  $result = $service_obj->Method(...);
  $result->Att1->Args

=head1 DESCRIPTION

Used to specify a stack or deployment command.

=head1 ATTRIBUTES


=head2 Args => L<Paws::OpsWorks::DeploymentCommandArgs>

  The arguments of those commands that take arguments. It should be set
to a JSON object with the following format:

C<{"arg_name1" : ["value1", "value2", ...], "arg_name2" : ["value1",
"value2", ...], ...}>

The C<update_dependencies> command takes two arguments:

=over

=item *

C<upgrade_os_to> - Specifies the desired Amazon Linux version for
instances whose OS you want to upgrade, such as C<Amazon Linux
2016.09>. You must also set the C<allow_reboot> argument to true.

=item *

C<allow_reboot> - Specifies whether to allow AWS OpsWorks Stacks to
reboot the instances if necessary, after installing the updates. This
argument can be set to either C<true> or C<false>. The default value is
C<false>.

=back

For example, to upgrade an instance to Amazon Linux 2016.09, set
C<Args> to the following.

C<{ "upgrade_os_to":["Amazon Linux 2016.09"], "allow_reboot":["true"]
}>


=head2 B<REQUIRED> Name => Str

  Specifies the operation. You can specify only one command.

For stacks, the following commands are available:

=over

=item *

C<execute_recipes>: Execute one or more recipes. To specify the
recipes, set an C<Args> parameter named C<recipes> to the list of
recipes to be executed. For example, to execute C<phpapp::appsetup>,
set C<Args> to C<{"recipes":["phpapp::appsetup"]}>.

=item *

C<install_dependencies>: Install the stack's dependencies.

=item *

C<update_custom_cookbooks>: Update the stack's custom cookbooks.

=item *

C<update_dependencies>: Update the stack's dependencies.

=back

The update_dependencies and install_dependencies commands are supported
only for Linux instances. You can run the commands successfully on
Windows instances, but they do nothing.

For apps, the following commands are available:

=over

=item *

C<deploy>: Deploy an app. Ruby on Rails apps have an optional C<Args>
parameter named C<migrate>. Set C<Args> to {"migrate":["true"]} to
migrate the database. The default setting is {"migrate":["false"]}.

=item *

C<rollback> Roll the app back to the previous version. When you update
an app, AWS OpsWorks Stacks stores the previous version, up to a
maximum of five versions. You can use this command to roll an app back
as many as four versions.

=item *

C<start>: Start the app's web or application server.

=item *

C<stop>: Stop the app's web or application server.

=item *

C<restart>: Restart the app's web or application server.

=item *

C<undeploy>: Undeploy the app.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

