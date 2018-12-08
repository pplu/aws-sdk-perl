
package Paws::IAM::PutGroupPolicy;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyDocument => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PutGroupPolicy - Arguments for method PutGroupPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutGroupPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method PutGroupPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutGroupPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To add a policy to a group
    # The following command adds a policy named AllPerms to the IAM group named
    # Admins.
    $iam->PutGroupPolicy(
      {
        'GroupName' => 'Admins',
        'PolicyDocument' =>
'{"Version":"2012-10-17","Statement":{"Effect":"Allow","Action":"*","Resource":"*"}}',
        'PolicyName' => 'AllPerms'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/PutGroupPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The name of the group to associate the policy with.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 B<REQUIRED> PolicyDocument => Str

The policy document.

The regex pattern (http://wikipedia.org/wiki/regex) used to validate
this parameter is a string of characters consisting of the following:

=over

=item *

Any printable ASCII character ranging from the space character (\u0020)
through the end of the ASCII character range

=item *

The printable characters in the Basic Latin and Latin-1 Supplement
character set (through \u00FF)

=item *

The special characters tab (\u0009), line feed (\u000A), and carriage
return (\u000D)

=back




=head2 B<REQUIRED> PolicyName => Str

The name of the policy document.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutGroupPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

