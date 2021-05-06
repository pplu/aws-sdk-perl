
package Paws::DS::ResetUserPassword;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has NewPassword => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetUserPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::ResetUserPasswordResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::ResetUserPassword - Arguments for method ResetUserPassword on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetUserPassword on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method ResetUserPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetUserPassword.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $ResetUserPasswordResult = $ds->ResetUserPassword(
      DirectoryId => 'MyDirectoryId',
      NewPassword => 'MyUserPassword',
      UserName    => 'MyCustomerUserName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/ResetUserPassword>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

Identifier of the AWS Managed Microsoft AD or Simple AD directory in
which the user resides.



=head2 B<REQUIRED> NewPassword => Str

The new password that will be reset.



=head2 B<REQUIRED> UserName => Str

The user name of the user whose password will be reset.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetUserPassword in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

