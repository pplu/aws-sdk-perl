
package Paws::ComprehendMedical::DetectEntitiesV2;
  use Moose;
  has Text => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectEntitiesV2');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ComprehendMedical::DetectEntitiesV2Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::DetectEntitiesV2 - Arguments for method DetectEntitiesV2 on L<Paws::ComprehendMedical>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectEntitiesV2 on the
L<AWS Comprehend Medical|Paws::ComprehendMedical> service. Use the attributes of this class
as arguments to method DetectEntitiesV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectEntitiesV2.

=head1 SYNOPSIS

    my $comprehendmedical = Paws->service('ComprehendMedical');
    my $DetectEntitiesV2Response = $comprehendmedical->DetectEntitiesV2(
      Text => 'MyBoundedLengthString',

    );

    # Results:
    my $Entities           = $DetectEntitiesV2Response->Entities;
    my $ModelVersion       = $DetectEntitiesV2Response->ModelVersion;
    my $PaginationToken    = $DetectEntitiesV2Response->PaginationToken;
    my $UnmappedAttributes = $DetectEntitiesV2Response->UnmappedAttributes;

    # Returns a L<Paws::ComprehendMedical::DetectEntitiesV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/comprehendmedical/DetectEntitiesV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Text => Str

A UTF-8 string containing the clinical content being examined for
entities. Each string must contain fewer than 20,000 bytes of
characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectEntitiesV2 in L<Paws::ComprehendMedical>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

