
package Paws::IAM::RemoveUserFromGroup;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveUserFromGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::RemoveUserFromGroup - Arguments for method RemoveUserFromGroup on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveUserFromGroup on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method RemoveUserFromGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveUserFromGroup.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    # To remove a user from an IAM group
    # The following command removes the user named Bob from the IAM group named
    # Admins.
    $iam->RemoveUserFromGroup(
      {
        'GroupName' => 'Admins',
        'UserName'  => 'Bob'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/RemoveUserFromGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The name of the group to update.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-



=head2 B<REQUIRED> UserName => Str

The name of the user to remove.

This parameter allows (through its regex pattern
(http://wikipedia.org/wiki/regex)) a string of characters consisting of
upper and lowercase alphanumeric characters with no spaces. You can
also include any of the following characters: _+=,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveUserFromGroup in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

