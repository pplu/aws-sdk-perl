package Paws::Datasync::TagListEntry;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::TagListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::TagListEntry object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::TagListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Represents a single entry in a list of AWS resource tags.
C<TagListEntry> returns an array that contains a list of tasks when the
ListTagsForResource operation is called.

=head1 ATTRIBUTES


=head2 Key => Str

  The key for an AWS resource tag.


=head2 Value => Str

  The value for an AWS resource tag.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

