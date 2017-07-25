
package Paws::AppStream::UpdateDirectoryConfig;
  use Moose;
  has DirectoryName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationalUnitDistinguishedNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServiceAccountCredentials => (is => 'ro', isa => 'Paws::AppStream::ServiceAccountCredentials');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDirectoryConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::UpdateDirectoryConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::UpdateDirectoryConfig - Arguments for method UpdateDirectoryConfig on Paws::AppStream

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDirectoryConfig on the 
Amazon AppStream service. Use the attributes of this class
as arguments to method UpdateDirectoryConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDirectoryConfig.

As an example:

  $service_obj->UpdateDirectoryConfig(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryName => Str

The name of the existing directory configuration to be updated.



=head2 OrganizationalUnitDistinguishedNames => ArrayRef[Str|Undef]

The list of the distinguished names of organizational units to place
computer accounts in.



=head2 ServiceAccountCredentials => L<Paws::AppStream::ServiceAccountCredentials>

The I<AccountName> and I<AccountPassword> values for the service
account, which are used by the streaming instance to connect to the
directory




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDirectoryConfig in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

