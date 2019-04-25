
package Paws::ComprehendMedical::DetectPHI;
  use Moose;
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectPHI');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::DetectPHIResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DetectPHI - Arguments for method DetectPHI on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectPHI on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method DetectPHI.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectPHI.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $DetectPHIResponse = $comprehendmedical->DetectPHI(
      Text => 'MyBoundedLengthString',

    );

    # Results:
    my $Entities        = $DetectPHIResponse->Entities;
    my $PaginationToken = $DetectPHIResponse->PaginationToken;

    # Returns a L<Paws::ComprehendMedical::DetectPHIResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/DetectPHI>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Text => Str

A UTF-8 text string containing the clinical content being examined for
PHI entities. Each string must contain fewer than 20,000 bytes of
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectPHI in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

