
package Paws::Translate::GetTerminology;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has TerminologyDataFormat => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTerminology');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Translate::GetTerminologyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Translate::GetTerminology - Arguments for method GetTerminology on L<Paws::Translate>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTerminology on the
L<Amazon Translate|Paws::Translate> service. Use the attributes of this class
as arguments to method GetTerminology.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTerminology.

=head1 SYNOPSIS

    my $translate = Paws->service('Translate');
    my $GetTerminologyResponse = $translate->GetTerminology(
      Name                  => 'MyResourceName',
      TerminologyDataFormat => 'CSV',

    );

    # Results:
    my $TerminologyDataLocation =
      $GetTerminologyResponse->TerminologyDataLocation;
    my $TerminologyProperties = $GetTerminologyResponse->TerminologyProperties;

    # Returns a L<Paws::Translate::GetTerminologyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/translate/GetTerminology>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the custom terminology being retrieved.



=head2 B<REQUIRED> TerminologyDataFormat => Str

The data format of the custom terminology being retrieved, either CSV
or TMX.

Valid values are: C<"CSV">, C<"TMX">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTerminology in L<Paws::Translate>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

