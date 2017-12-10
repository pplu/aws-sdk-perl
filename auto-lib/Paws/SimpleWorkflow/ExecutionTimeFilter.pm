package Paws::SimpleWorkflow::ExecutionTimeFilter;
  use Moose;
  has LatestDate => (is => 'ro', isa => 'Str', request_name => 'latestDate', traits => ['NameInRequest']);
  has OldestDate => (is => 'ro', isa => 'Str', request_name => 'oldestDate', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ExecutionTimeFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::ExecutionTimeFilter object:

  $service_obj->Method(Att1 => { LatestDate => $value, ..., OldestDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::ExecutionTimeFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->LatestDate

=head1 DESCRIPTION

Used to filter the workflow executions in visibility APIs by various
time-based rules. Each parameter, if specified, defines a rule that
must be satisfied by each returned query result. The parameter values
are in the Unix Time format (https://en.wikipedia.org/wiki/Unix_time).
For example: C<"oldestDate": 1325376070.>

=head1 ATTRIBUTES


=head2 LatestDate => Str

  Specifies the latest start or close date and time to return.


=head2 B<REQUIRED> OldestDate => Str

  Specifies the oldest start or close date and time to return.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

