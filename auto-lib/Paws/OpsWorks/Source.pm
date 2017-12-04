package Paws::OpsWorks::Source;
  use Moose;
  has Password => (is => 'ro', isa => 'Str');
  has Revision => (is => 'ro', isa => 'Str');
  has SshKey => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Url => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::Source

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::Source object:

  $service_obj->Method(Att1 => { Password => $value, ..., Username => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::Source object:

  $result = $service_obj->Method(...);
  $result->Att1->Password

=head1 DESCRIPTION

Contains the information required to retrieve an app or cookbook from a
repository. For more information, see Creating Apps
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html)
or Custom Recipes and Cookbooks
(http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook.html).

=head1 ATTRIBUTES


=head2 Password => Str

  When included in a request, the parameter depends on the repository
type.

=over

=item *

For Amazon S3 bundles, set C<Password> to the appropriate IAM secret
access key.

=item *

For HTTP bundles and Subversion repositories, set C<Password> to the
password.

=back

For more information on how to safely handle IAM credentials, see
http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html
(http://docs.aws.amazon.com/general/latest/gr/aws-access-keys-best-practices.html).

In responses, AWS OpsWorks Stacks returns C<*****FILTERED*****> instead
of the actual value.


=head2 Revision => Str

  The application's version. AWS OpsWorks Stacks enables you to easily
deploy new versions of an application. One of the simplest approaches
is to have branches or revisions in your repository that represent
different versions that can potentially be deployed.


=head2 SshKey => Str

  In requests, the repository's SSH key.

In responses, AWS OpsWorks Stacks returns C<*****FILTERED*****> instead
of the actual value.


=head2 Type => Str

  The repository type.


=head2 Url => Str

  The source URL. The following is an example of an Amazon S3 source URL:
C<https://s3.amazonaws.com/opsworks-demo-bucket/opsworks_cookbook_demo.tar.gz>.


=head2 Username => Str

  This parameter depends on the repository type.

=over

=item *

For Amazon S3 bundles, set C<Username> to the appropriate IAM access
key ID.

=item *

For HTTP bundles, Git repositories, and Subversion repositories, set
C<Username> to the user name.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

