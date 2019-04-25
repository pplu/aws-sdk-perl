package Paws::AppStream::DirectoryConfig;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DirectoryName => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationalUnitDistinguishedNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServiceAccountCredentials => (is => 'ro', isa => 'Paws::AppStream::ServiceAccountCredentials');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DirectoryConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::DirectoryConfig object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., ServiceAccountCredentials => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::DirectoryConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

Describes the configuration information for the directory used to join
a streaming instance to a Microsoft Active Directory domain.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The time the directory configuration was created.


=head2 B<REQUIRED> DirectoryName => Str

  The fully qualified name of the directory (for example,
corp.example.com).


=head2 OrganizationalUnitDistinguishedNames => ArrayRef[Str|Undef]

  The distinguished names of the organizational units for computer
accounts.


=head2 ServiceAccountCredentials => L<Paws::AppStream::ServiceAccountCredentials>

  The credentials for the service account used by the streaming instance
to connect to the directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

