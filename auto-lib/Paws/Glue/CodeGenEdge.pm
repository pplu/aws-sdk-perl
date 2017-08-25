package Paws::Glue::CodeGenEdge;
  use Moose;
  has Source => (is => 'ro', isa => 'Str', required => 1);
  has Target => (is => 'ro', isa => 'Str', required => 1);
  has TargetParameter => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CodeGenEdge

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CodeGenEdge object:

  $service_obj->Method(Att1 => { Source => $value, ..., TargetParameter => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CodeGenEdge object:

  $result = $service_obj->Method(...);
  $result->Att1->Source

=head1 DESCRIPTION

Represents a directional edge in a directed acyclic graph (DAG).

=head1 ATTRIBUTES


=head2 B<REQUIRED> Source => Str

  The ID of the node at which the edge starts.


=head2 B<REQUIRED> Target => Str

  The ID of the node at which the edge ends.


=head2 TargetParameter => Str

  The target of the edge.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

