
package Paws::IAM::DetachGroupPolicy;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has PolicyArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetachGroupPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::DetachGroupPolicy - Arguments for method DetachGroupPolicy on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetachGroupPolicy on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method DetachGroupPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetachGroupPolicy.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->DetachGroupPolicy(
      GroupName => 'MygroupNameType',
      PolicyArn => 'MyarnType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/DetachGroupPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The name (friendly name, not ARN) of the IAM group to detach the policy
from.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 B<REQUIRED> PolicyArn => Str

The Amazon Resource Name (ARN) of the IAM policy you want to detach.

For more information about ARNs, see Amazon Resource Names (ARNs) and
AWS Service Namespaces
(http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<AWS General Reference>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetachGroupPolicy in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

