
package Paws::IAM::DeleteUserPolicy;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUserPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeleteUserPolicy - Arguments for method DeleteUserPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUserPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DeleteUserPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUserPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To remove a policy from an IAM user
    # The following delete-user-policy command removes the specified policy from
    # the IAM user named Juan:
    $iam->DeleteUserPolicy(
      {
        'PolicyName' => 'ExamplePolicy',
        'UserName'   => 'Juan'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DeleteUserPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The name identifying the policy document to delete.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 B<REQUIRED> UserName => Str

The name (friendly name, not ARN) identifying the user that the policy
is embedded in.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUserPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

