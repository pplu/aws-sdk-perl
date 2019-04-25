
package Paws::IAM::DeleteGroupPolicy;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DeleteGroupPolicy - Arguments for method DeleteGroupPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGroupPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DeleteGroupPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGroupPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
   # To delete a policy from an IAM group
   # The following command deletes the policy named ExamplePolicy from the group
   # named Admins:
    $iam->DeleteGroupPolicy(
      {
        'GroupName'  => 'Admins',
        'PolicyName' => 'ExamplePolicy'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DeleteGroupPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The name (friendly name, not ARN) identifying the group that the policy
is embedded in.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 B<REQUIRED> PolicyName => Str

The name identifying the policy document to delete.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGroupPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

