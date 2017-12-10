package Paws::OpsWorks::EnvironmentVariable;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', required => 1);
  has Secure => (is => 'ro', isa => 'Bool');
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::EnvironmentVariable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::EnvironmentVariable object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::EnvironmentVariable object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Represents an app's environment variable.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => Str

  (Required) The environment variable's name, which can consist of up to
64 characters and must be specified. The name can contain upper- and
lowercase letters, numbers, and underscores (_), but it must start with
a letter or underscore.


=head2 Secure => Bool

  (Optional) Whether the variable's value will be returned by the
DescribeApps action. To conceal an environment variable's value, set
C<Secure> to C<true>. C<DescribeApps> then returns
C<*****FILTERED*****> instead of the actual value. The default value
for C<Secure> is C<false>.


=head2 B<REQUIRED> Value => Str

  (Optional) The environment variable's value, which can be left empty.
If you specify a value, it can contain up to 256 characters, which must
all be printable.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

