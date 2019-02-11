package Paws::CodeBuild::EnvironmentVariable;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Value => (is => 'ro', isa => 'Str', request_name => 'value', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::EnvironmentVariable

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::EnvironmentVariable object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::EnvironmentVariable object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Information about an environment variable for a build project or a
build.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name or key of the environment variable.


=head2 Type => Str

  The type of environment variable. Valid values include:

=over

=item *

C<PARAMETER_STORE>: An environment variable stored in Amazon EC2
Systems Manager Parameter Store.

=item *

C<PLAINTEXT>: An environment variable in plaintext format.

=back



=head2 B<REQUIRED> Value => Str

  The value of the environment variable.

We strongly discourage the use of environment variables to store
sensitive values, especially AWS secret key IDs and secret access keys.
Environment variables can be displayed in plain text using the AWS
CodeBuild console and the AWS Command Line Interface (AWS CLI).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

