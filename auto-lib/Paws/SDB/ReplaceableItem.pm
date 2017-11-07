package Paws::SDB::ReplaceableItem;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::SDB::ReplaceableAttribute]', request_name => 'Attribute', request_name => 'Attribute', traits => ['NameInRequest','NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'ItemName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SDB::ReplaceableItem

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SDB::ReplaceableItem object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SDB::ReplaceableItem object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[L<Paws::SDB::ReplaceableAttribute>]

  The list of attributes for a replaceable item.


=head2 B<REQUIRED> Name => Str

  The name of the replaceable item.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

