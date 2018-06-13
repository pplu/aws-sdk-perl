
package Paws::IAM::DeleteAccountPasswordPolicy;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAccountPasswordPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeleteAccountPasswordPolicy - Arguments for method DeleteAccountPasswordPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAccountPasswordPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DeleteAccountPasswordPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAccountPasswordPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To delete the current account password policy
    # The following command removes the password policy from the current AWS
    # account:
    $iam->DeleteAccountPasswordPolicy();


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DeleteAccountPasswordPolicy>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAccountPasswordPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

