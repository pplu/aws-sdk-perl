package Paws::Snowball::KeyRange;
  use Moose;
  has BeginMarker => (is => 'ro', isa => 'Str');
  has EndMarker => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::KeyRange

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::KeyRange object:

  $service_obj->Method(Att1 => { BeginMarker => $value, ..., EndMarker => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::KeyRange object:

  $result = $service_obj->Method(...);
  $result->Att1->BeginMarker

=head1 DESCRIPTION

Contains a key range. For export jobs, a C<S3Resource> object can have
an optional C<KeyRange> value. The length of the range is defined at
job creation, and has either an inclusive C<BeginMarker>, an inclusive
C<EndMarker>, or both. Ranges are UTF-8 binary sorted.

=head1 ATTRIBUTES


=head2 BeginMarker => Str

  The key that starts an optional key range for an export job. Ranges are
inclusive and UTF-8 binary sorted.


=head2 EndMarker => Str

  The key that ends an optional key range for an export job. Ranges are
inclusive and UTF-8 binary sorted.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

