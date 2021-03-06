
package Paws::DS::CreateDirectory;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str', required => 1);
  has ShortName => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DS::Tag]');
  has VpcSettings => (is => 'ro', isa => 'Paws::DS::DirectoryVpcSettings');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDirectory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::CreateDirectoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::CreateDirectory - Arguments for method CreateDirectory on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDirectory on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method CreateDirectory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDirectory.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $CreateDirectoryResult = $ds->CreateDirectory(
      Name        => 'MyDirectoryName',
      Password    => 'MyPassword',
      Size        => 'Small',
      Description => 'MyDescription',           # OPTIONAL
      ShortName   => 'MyDirectoryShortName',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      VpcSettings => {
        SubnetIds => [ 'MySubnetId', ... ],
        VpcId     => 'MyVpcId',

      },    # OPTIONAL
    );

    # Results:
    my $DirectoryId = $CreateDirectoryResult->DirectoryId;

    # Returns a L<Paws::DS::CreateDirectoryResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/CreateDirectory>

=head1 ATTRIBUTES


=head2 Description => Str

A description for the directory.



=head2 B<REQUIRED> Name => Str

The fully qualified name for the directory, such as
C<corp.example.com>.



=head2 B<REQUIRED> Password => Str

The password for the directory administrator. The directory creation
process creates a directory administrator account with the user name
C<Administrator> and this password.

If you need to change the password for the administrator account, you
can use the ResetUserPassword API call.

The regex pattern for this string is made up of the following
conditions:

=over

=item *

Length (?=^.{8,64}$) E<ndash> Must be between 8 and 64 characters

=back

AND any 3 of the following password complexity rules required by Active
Directory:

=over

=item *

Numbers and upper case and lowercase (?=.*\d)(?=.*[A-Z])(?=.*[a-z])

=item *

Numbers and special characters and lower case
(?=.*\d)(?=.*[^A-Za-z0-9\s])(?=.*[a-z])

=item *

Special characters and upper case and lower case
(?=.*[^A-Za-z0-9\s])(?=.*[A-Z])(?=.*[a-z])

=item *

Numbers and upper case and special characters
(?=.*\d)(?=.*[A-Z])(?=.*[^A-Za-z0-9\s])

=back

For additional information about how Active Directory passwords are
enforced, see Password must meet complexity requirements
(https://docs.microsoft.com/en-us/windows/security/threat-protection/security-policy-settings/password-must-meet-complexity-requirements)
on the Microsoft website.



=head2 ShortName => Str

The NetBIOS name of the directory, such as C<CORP>.



=head2 B<REQUIRED> Size => Str

The size of the directory.

Valid values are: C<"Small">, C<"Large">

=head2 Tags => ArrayRef[L<Paws::DS::Tag>]

The tags to be assigned to the Simple AD directory.



=head2 VpcSettings => L<Paws::DS::DirectoryVpcSettings>

A DirectoryVpcSettings object that contains additional information for
the operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDirectory in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

