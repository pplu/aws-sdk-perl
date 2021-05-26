
package Paws::ComprehendMedical::InferRxNorm;
  use Moose;
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InferRxNorm');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::InferRxNormResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::InferRxNorm - Arguments for method InferRxNorm on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method InferRxNorm on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method InferRxNorm.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InferRxNorm.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $InferRxNormResponse = $comprehendmedical->InferRxNorm(
      Text => 'MyOntologyLinkingBoundedLengthString',

    );

    # Results:
    my $Entities        = $InferRxNormResponse->Entities;
    my $ModelVersion    = $InferRxNormResponse->ModelVersion;
    my $PaginationToken = $InferRxNormResponse->PaginationToken;

    # Returns a L<Paws::ComprehendMedical::InferRxNormResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/InferRxNorm>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Text => Str

The input text used for analysis. The input for InferRxNorm is a string
from 1 to 10000 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InferRxNorm in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

