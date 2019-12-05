package Paws::Kendra::Highlight;
  use Moose;
  has BeginOffset => (is => 'ro', isa => 'Int', required => 1);
  has EndOffset => (is => 'ro', isa => 'Int', required => 1);
  has TopAnswer => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::Highlight

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::Highlight object:

  $service_obj->Method(Att1 => { BeginOffset => $value, ..., TopAnswer => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::Highlight object:

  $result = $service_obj->Method(...);
  $result->Att1->BeginOffset

=head1 DESCRIPTION

Provides information that you can use to highlight a search result so
that your users can quickly identify terms in the response.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BeginOffset => Int

  The zero-based location in the response string where the highlight
starts.


=head2 B<REQUIRED> EndOffset => Int

  The zero-based location in the response string where the highlight
ends.


=head2 TopAnswer => Bool

  Indicates whether the response is the best response. True if this is
the best response; otherwise, false.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

