
package Paws::Glue::GetDataflowGraph;
  use Moose;
  has PythonScript => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDataflowGraph');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetDataflowGraphResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDataflowGraph - Arguments for method GetDataflowGraph on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDataflowGraph on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetDataflowGraph.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDataflowGraph.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetDataflowGraphResponse = $glue->GetDataflowGraph(
      PythonScript => 'MyPythonScript',    # OPTIONAL
    );

    # Results:
    my $DagEdges = $GetDataflowGraphResponse->DagEdges;
    my $DagNodes = $GetDataflowGraphResponse->DagNodes;

    # Returns a L<Paws::Glue::GetDataflowGraphResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetDataflowGraph>

=head1 ATTRIBUTES


=head2 PythonScript => Str

The Python script to transform.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDataflowGraph in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

