package Paws::CloudFront::PublicKeyList;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::PublicKeySummary]', request_name => 'PublicKeySummary', traits => ['NameInRequest']);
  has MaxItems => (is => 'ro', isa => 'Int', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::PublicKeyList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::PublicKeyList object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::PublicKeyList object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A list of public keys you've added to CloudFront to use with features
like field-level encryption.

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::CloudFront::PublicKeySummary>]

  An array of information about a public key you add to CloudFront to use
with features like field-level encryption.


=head2 B<REQUIRED> MaxItems => Int

  The maximum number of public keys you want in the response body.


=head2 NextMarker => Str

  If there are more elements to be listed, this element is present and
contains the value that you can use for the C<Marker> request parameter
to continue listing your public keys where you left off.


=head2 B<REQUIRED> Quantity => Int

  The number of public keys you added to CloudFront to use with features
like field-level encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

