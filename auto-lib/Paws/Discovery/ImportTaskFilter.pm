package Paws::Discovery::ImportTaskFilter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'values', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ImportTaskFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Discovery::ImportTaskFilter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Discovery::ImportTaskFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A name-values pair of elements you can use to filter the results when
querying your import tasks. Currently, wildcards are not supported for
filters.

When filtering by import status, all other filter values are ignored.

=head1 ATTRIBUTES


=head2 Name => Str

  The name, status, or import task ID for a specific import task.


=head2 Values => ArrayRef[Str|Undef]

  An array of strings that you can provide to match against a specific
name, status, or import task ID to filter the results for your import
task queries.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

