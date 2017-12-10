package Paws::Glue::SchemaChangePolicy;
  use Moose;
  has DeleteBehavior => (is => 'ro', isa => 'Str');
  has UpdateBehavior => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::SchemaChangePolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::SchemaChangePolicy object:

  $service_obj->Method(Att1 => { DeleteBehavior => $value, ..., UpdateBehavior => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::SchemaChangePolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->DeleteBehavior

=head1 DESCRIPTION

Crawler policy for update and deletion behavior.

=head1 ATTRIBUTES


=head2 DeleteBehavior => Str

  The deletion behavior when the crawler finds a deleted object.


=head2 UpdateBehavior => Str

  The update behavior when the crawler finds a changed schema.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

