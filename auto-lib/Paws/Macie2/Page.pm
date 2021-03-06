# Generated by default/object.tt
package Paws::Macie2::Page;
  use Moose;
  has LineRange => (is => 'ro', isa => 'Paws::Macie2::Range', request_name => 'lineRange', traits => ['NameInRequest']);
  has OffsetRange => (is => 'ro', isa => 'Paws::Macie2::Range', request_name => 'offsetRange', traits => ['NameInRequest']);
  has PageNumber => (is => 'ro', isa => 'Int', request_name => 'pageNumber', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::Page

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Macie2::Page object:

  $service_obj->Method(Att1 => { LineRange => $value, ..., PageNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Macie2::Page object:

  $result = $service_obj->Method(...);
  $result->Att1->LineRange

=head1 DESCRIPTION

Specifies the location of an occurrence of sensitive data in an Adobe
Portable Document Format file.

=head1 ATTRIBUTES


=head2 LineRange => L<Paws::Macie2::Range>

Reserved for future use.


=head2 OffsetRange => L<Paws::Macie2::Range>

Reserved for future use.


=head2 PageNumber => Int

The page number of the page that contains the sensitive data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

