
package Paws::Lightsail::GetRelationalDatabaseMasterUserPassword;
  use Moose;
  has PasswordVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'passwordVersion' );
  has RelationalDatabaseName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'relationalDatabaseName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRelationalDatabaseMasterUserPassword');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetRelationalDatabaseMasterUserPasswordResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetRelationalDatabaseMasterUserPassword - Arguments for method GetRelationalDatabaseMasterUserPassword on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRelationalDatabaseMasterUserPassword on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetRelationalDatabaseMasterUserPassword.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRelationalDatabaseMasterUserPassword.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetRelationalDatabaseMasterUserPasswordResult =
      $lightsail->GetRelationalDatabaseMasterUserPassword(
      RelationalDatabaseName => 'MyResourceName',
      PasswordVersion        => 'CURRENT',          # OPTIONAL
      );

    # Results:
    my $CreatedAt = $GetRelationalDatabaseMasterUserPasswordResult->CreatedAt;
    my $MasterUserPassword =
      $GetRelationalDatabaseMasterUserPasswordResult->MasterUserPassword;

# Returns a L<Paws::Lightsail::GetRelationalDatabaseMasterUserPasswordResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetRelationalDatabaseMasterUserPassword>

=head1 ATTRIBUTES


=head2 PasswordVersion => Str

The password version to return.

Specifying C<CURRENT> or C<PREVIOUS> returns the current or previous
passwords respectively. Specifying C<PENDING> returns the newest
version of the password that will rotate to C<CURRENT>. After the
C<PENDING> password rotates to C<CURRENT>, the C<PENDING> password is
no longer available.

Default: C<CURRENT>

Valid values are: C<"CURRENT">, C<"PREVIOUS">, C<"PENDING">

=head2 B<REQUIRED> RelationalDatabaseName => Str

The name of your database for which to get the master user password.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRelationalDatabaseMasterUserPassword in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

