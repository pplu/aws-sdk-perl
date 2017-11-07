package Paws::AppStream::ServiceAccountCredentials;
  use Moose;
  has AccountName => (is => 'ro', isa => 'Str', required => 1);
  has AccountPassword => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ServiceAccountCredentials

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::ServiceAccountCredentials object:

  $service_obj->Method(Att1 => { AccountName => $value, ..., AccountPassword => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::ServiceAccountCredentials object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountName

=head1 DESCRIPTION

Describes the credentials for the service account used by the streaming
instance to connect to the directory.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountName => Str

  The user name of the account. This account must have the following
privileges: create computer objects, join computers to the domain, and
change/reset the password on descendant computer objects for the
organizational units specified.


=head2 B<REQUIRED> AccountPassword => Str

  The password for the account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

