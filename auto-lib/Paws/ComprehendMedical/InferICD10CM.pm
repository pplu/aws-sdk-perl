
package Paws::ComprehendMedical::InferICD10CM;
  use Moose;
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InferICD10CM');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::InferICD10CMResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::InferICD10CM - Arguments for method InferICD10CM on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InferICD10CM on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method InferICD10CM.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InferICD10CM.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $InferICD10CMResponse = $comprehendmedical->InferICD10CM(
      Text => 'MyOntologyLinkingBoundedLengthString',

    );

    # Results:
    my $Entities        = $InferICD10CMResponse->Entities;
    my $ModelVersion    = $InferICD10CMResponse->ModelVersion;
    my $PaginationToken = $InferICD10CMResponse->PaginationToken;

    # Returns a L<Paws::ComprehendMedical::InferICD10CMResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/InferICD10CM>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Text => Str

The input text used for analysis. The input for InferICD10CM is a
string from 1 to 10000 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InferICD10CM in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

