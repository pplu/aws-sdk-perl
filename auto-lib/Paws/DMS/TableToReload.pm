package Paws::DMS::TableToReload;
  use Moose;
  has SchemaName => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::TableToReload

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DMS::TableToReload object:

  $service_obj->Method(Att1 => { SchemaName => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DMS::TableToReload object:

  $result = $service_obj->Method(...);
  $result->Att1->SchemaName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 SchemaName => Str

  The schema name of the table to be reloaded.


=head2 TableName => Str

  The table name of the table to be reloaded.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

