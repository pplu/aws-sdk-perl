package Paws::FSX::DataRepositoryTaskFilter;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Values => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FSX::DataRepositoryTaskFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::FSX::DataRepositoryTaskFilter object:

  $service_obj->Method(Att1 => { Name => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::FSX::DataRepositoryTaskFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

(Optional) An array of filter objects you can use to filter the
response of data repository tasks you will see in the the response. You
can filter the tasks returned in the response by one or more file
system IDs, task lifecycles, and by task type. A filter object consists
of a filter C<Name>, and one or more C<Values> for the filter.

=head1 ATTRIBUTES


=head2 Name => Str

  Name of the task property to use in filtering the tasks returned in the
response.

=over

=item *

Use C<file-system-id> to retrieve data repository tasks for specific
file systems.

=item *

Use C<task-lifecycle> to retrieve data repository tasks with one or
more specific lifecycle states, as follows: CANCELED, EXECUTING,
FAILED, PENDING, and SUCCEEDED.

=back



=head2 Values => ArrayRef[Str|Undef]

  Use Values to include the specific file system IDs and task lifecycle
states for the filters you are using.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::FSX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

