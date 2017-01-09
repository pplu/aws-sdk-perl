
package Paws::IAM::ChangePassword;
  use Moose;
  has NewPassword => (is => 'ro', isa => 'Str', required => 1);
  has OldPassword => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangePassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ChangePassword - Arguments for method ChangePassword on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangePassword on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method ChangePassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangePassword.

As an example:

  $service_obj->ChangePassword(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> NewPassword => Str

The new password. The new password must conform to the AWS account's
password policy, if one exists.

The regex pattern used to validate this parameter is a string of
characters consisting of almost any printable ASCII character from the
space (\u0020) through the end of the ASCII character range (\u00FF).
You can also include the tab (\u0009), line feed (\u000A), and carriage
return (\u000D) characters. Although any of these characters are valid
in a password, note that many tools, such as the AWS Management
Console, might restrict the ability to enter certain characters because
they have special meaning within that tool.



=head2 B<REQUIRED> OldPassword => Str

The IAM user's current password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangePassword in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

