
package Paws::Glue::CreateScript;
  use Moose;
  has DagEdges => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CodeGenEdge]');
  has DagNodes => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CodeGenNode]');
  has Language => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateScript');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateScriptResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateScript - Arguments for method CreateScript on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateScript on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method CreateScript.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateScript.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $CreateScriptResponse = $glue->CreateScript(
      DagEdges => [
        {
          Source          => 'MyCodeGenIdentifier',    # min: 1, max: 255
          Target          => 'MyCodeGenIdentifier',    # min: 1, max: 255
          TargetParameter => 'MyCodeGenArgName',       # OPTIONAL
        },
        ...
      ],                                               # OPTIONAL
      DagNodes => [
        {
          Args => [
            {
              Name  => 'MyCodeGenArgName',             # OPTIONAL
              Value => 'MyCodeGenArgValue',
              Param => 1,                              # OPTIONAL
            },
            ...
          ],                                           # max: 50
          Id         => 'MyCodeGenIdentifier',         # min: 1, max: 255
          NodeType   => 'MyCodeGenNodeType',
          LineNumber => 1,                             # OPTIONAL
        },
        ...
      ],                                               # OPTIONAL
      Language => 'PYTHON',                            # OPTIONAL
    );

    # Results:
    my $PythonScript = $CreateScriptResponse->PythonScript;
    my $ScalaCode    = $CreateScriptResponse->ScalaCode;

    # Returns a L<Paws::Glue::CreateScriptResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/CreateScript>

=head1 ATTRIBUTES


=head2 DagEdges => ArrayRef[L<Paws::Glue::CodeGenEdge>]

A list of the edges in the DAG.



=head2 DagNodes => ArrayRef[L<Paws::Glue::CodeGenNode>]

A list of the nodes in the DAG.



=head2 Language => Str

The programming language of the resulting code from the DAG.

Valid values are: C<"PYTHON">, C<"SCALA">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateScript in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

