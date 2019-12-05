package Paws::SSM::AccountSharingInfo;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has SharedDocumentVersion => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AccountSharingInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::AccountSharingInfo object:

  $service_obj->Method(Att1 => { AccountId => $value, ..., SharedDocumentVersion => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::AccountSharingInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AccountId

=head1 DESCRIPTION

Information includes the AWS account ID where the current document is
shared and the version shared with that account.

=head1 ATTRIBUTES


=head2 AccountId => Str

  The AWS account ID where the current document is shared.


=head2 SharedDocumentVersion => Str

  The version of the current document shared with the account.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

