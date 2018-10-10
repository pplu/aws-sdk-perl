package Paws::DS::SharedDirectory;
  use Moose;
  has CreatedDateTime => (is => 'ro', isa => 'Str');
  has LastUpdatedDateTime => (is => 'ro', isa => 'Str');
  has OwnerAccountId => (is => 'ro', isa => 'Str');
  has OwnerDirectoryId => (is => 'ro', isa => 'Str');
  has SharedAccountId => (is => 'ro', isa => 'Str');
  has SharedDirectoryId => (is => 'ro', isa => 'Str');
  has ShareMethod => (is => 'ro', isa => 'Str');
  has ShareNotes => (is => 'ro', isa => 'Str');
  has ShareStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::SharedDirectory

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DS::SharedDirectory object:

  $service_obj->Method(Att1 => { CreatedDateTime => $value, ..., ShareStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DS::SharedDirectory object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDateTime

=head1 DESCRIPTION

Details about the shared directory in the directory owner account for
which the share request in the directory consumer account has been
accepted.

=head1 ATTRIBUTES


=head2 CreatedDateTime => Str

  The date and time that the shared directory was created.


=head2 LastUpdatedDateTime => Str

  The date and time that the shared directory was last updated.


=head2 OwnerAccountId => Str

  Identifier of the directory owner account, which contains the directory
that has been shared to the consumer account.


=head2 OwnerDirectoryId => Str

  Identifier of the directory in the directory owner account.


=head2 SharedAccountId => Str

  Identifier of the directory consumer account that has access to the
shared directory (C<OwnerDirectoryId>) in the directory owner account.


=head2 SharedDirectoryId => Str

  Identifier of the shared directory in the directory consumer account.
This identifier is different for each directory owner account.


=head2 ShareMethod => Str

  The method used when sharing a directory to determine whether the
directory should be shared within your AWS organization
(C<ORGANIZATIONS>) or with any AWS account by sending a shared
directory request (C<HANDSHAKE>).


=head2 ShareNotes => Str

  A directory share request that is sent by the directory owner to the
directory consumer. The request includes a typed message to help the
directory consumer administrator determine whether to approve or reject
the share invitation.


=head2 ShareStatus => Str

  Current directory status of the shared AWS Managed Microsoft AD
directory.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

