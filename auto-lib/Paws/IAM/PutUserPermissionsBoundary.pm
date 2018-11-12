
package Paws::IAM::PutUserPermissionsBoundary;
  use Moose;
  has PermissionsBoundary => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutUserPermissionsBoundary');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PutUserPermissionsBoundary - Arguments for method PutUserPermissionsBoundary on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutUserPermissionsBoundary on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method PutUserPermissionsBoundary.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutUserPermissionsBoundary.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    $iam->PutUserPermissionsBoundary(
      PermissionsBoundary => 'MyarnType',
      UserName            => 'MyuserNameType',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/PutUserPermissionsBoundary>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PermissionsBoundary => Str

The ARN of the policy that is used to set the permissions boundary for
the user.



=head2 B<REQUIRED> UserName => Str

The name (friendly name, not ARN) of the IAM user for which you want to
set the permissions boundary.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutUserPermissionsBoundary in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

