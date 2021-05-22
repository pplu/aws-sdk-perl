
package Paws::Macie2::GetCustomDataIdentifier;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCustomDataIdentifier');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/custom-data-identifiers/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::GetCustomDataIdentifierResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::GetCustomDataIdentifier - Arguments for method GetCustomDataIdentifier on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCustomDataIdentifier on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method GetCustomDataIdentifier.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCustomDataIdentifier.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $GetCustomDataIdentifierResponse = $macie2->GetCustomDataIdentifier(
      Id => 'My__string',

    );

    # Results:
    my $Arn         = $GetCustomDataIdentifierResponse->Arn;
    my $CreatedAt   = $GetCustomDataIdentifierResponse->CreatedAt;
    my $Deleted     = $GetCustomDataIdentifierResponse->Deleted;
    my $Description = $GetCustomDataIdentifierResponse->Description;
    my $Id          = $GetCustomDataIdentifierResponse->Id;
    my $IgnoreWords = $GetCustomDataIdentifierResponse->IgnoreWords;
    my $Keywords    = $GetCustomDataIdentifierResponse->Keywords;
    my $MaximumMatchDistance =
      $GetCustomDataIdentifierResponse->MaximumMatchDistance;
    my $Name  = $GetCustomDataIdentifierResponse->Name;
    my $Regex = $GetCustomDataIdentifierResponse->Regex;
    my $Tags  = $GetCustomDataIdentifierResponse->Tags;

    # Returns a L<Paws::Macie2::GetCustomDataIdentifierResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/GetCustomDataIdentifier>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The unique identifier for the Amazon Macie resource or account that the
request applies to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCustomDataIdentifier in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

