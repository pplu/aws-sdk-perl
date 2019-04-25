
package Paws::IAM::GetRole;
  use Moose;
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetRoleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetRole - Arguments for method GetRole on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRole on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method GetRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRole.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To get information about an IAM role
    # The following command gets information about the role named Test-Role.
    my $GetRoleResponse = $iam->GetRole(
      {
        'RoleName' => 'Test-Role'
      }
    );

    # Results:
    my $Role = $GetRoleResponse->Role;

    # Returns a L<Paws::IAM::GetRoleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/GetRole>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoleName => Str

The name of the IAM role to get information about.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRole in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

