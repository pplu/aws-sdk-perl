# Generated by default/object.tt
package Paws::QLDBSession::FetchPageRequest;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str', required => 1);
  has TransactionId => (is => 'ro', isa => 'Str', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDBSession::FetchPageRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::QLDBSession::FetchPageRequest object:

  $service_obj->Method(Att1 => { NextPageToken => $value, ..., TransactionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::QLDBSession::FetchPageRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->NextPageToken

=head1 DESCRIPTION

Specifies the details of the page to be fetched.

=head1 ATTRIBUTES


=head2 B<REQUIRED> NextPageToken => Str

Specifies the next page token of the page to be fetched.


=head2 B<REQUIRED> TransactionId => Str

Specifies the transaction ID of the page to be fetched.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::QLDBSession>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

