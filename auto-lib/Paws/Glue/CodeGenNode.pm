package Paws::Glue::CodeGenNode;
  use Moose;
  has Args => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CodeGenNodeArg]', required => 1);
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has LineNumber => (is => 'ro', isa => 'Int');
  has NodeType => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CodeGenNode

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::CodeGenNode object:

  $service_obj->Method(Att1 => { Args => $value, ..., NodeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::CodeGenNode object:

  $result = $service_obj->Method(...);
  $result->Att1->Args

=head1 DESCRIPTION

Represents a node in a directed acyclic graph (DAG)

=head1 ATTRIBUTES


=head2 B<REQUIRED> Args => ArrayRef[L<Paws::Glue::CodeGenNodeArg>]

  Properties of the node, in the form of name-value pairs.


=head2 B<REQUIRED> Id => Str

  A node identifier that is unique within the node's graph.


=head2 LineNumber => Int

  The line number of the node.


=head2 B<REQUIRED> NodeType => Str

  The type of node this is.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

