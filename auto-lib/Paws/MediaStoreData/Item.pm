package Paws::MediaStoreData::Item;
  use Moose;
  has ContentLength => (is => 'ro', isa => 'Int');
  has ContentType => (is => 'ro', isa => 'Str');
  has ETag => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaStoreData::Item

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaStoreData::Item object:

  $service_obj->Method(Att1 => { ContentLength => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaStoreData::Item object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentLength

=head1 DESCRIPTION

A metadata entry for a folder or object.

=head1 ATTRIBUTES


=head2 ContentLength => Int

  The length of the item in bytes.


=head2 ContentType => Str

  The content type of the item.


=head2 ETag => Str

  The ETag that represents a unique instance of the item.


=head2 LastModified => Str

  The date and time that the item was last modified.


=head2 Name => Str

  The name of the item.


=head2 Type => Str

  The item type (folder or object).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaStoreData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

