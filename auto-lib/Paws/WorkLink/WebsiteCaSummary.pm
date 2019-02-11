package Paws::WorkLink::WebsiteCaSummary;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has WebsiteCaId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::WebsiteCaSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkLink::WebsiteCaSummary object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., WebsiteCaId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkLink::WebsiteCaSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

The summary of the certificate authority (CA).

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The time when the CA was added.


=head2 DisplayName => Str

  The name to display.


=head2 WebsiteCaId => Str

  A unique identifier for the CA.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

