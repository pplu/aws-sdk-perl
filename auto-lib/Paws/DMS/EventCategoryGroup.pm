package Paws::DMS::EventCategoryGroup;
  use Moose;
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::EventCategoryGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::EventCategoryGroup object:

  $service_obj->Method(Att1 => { EventCategories => $value, ..., SourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::EventCategoryGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->EventCategories

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 EventCategories => ArrayRef[Str|Undef]

  A list of event categories for a C<SourceType> that you want to
subscribe to.


=head2 SourceType => Str

  The type of AWS DMS resource that generates events.

Valid values: replication-instance | replication-server |
security-group | migration-task



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

