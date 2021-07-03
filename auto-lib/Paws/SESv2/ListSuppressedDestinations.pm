
package Paws::SESv2::ListSuppressedDestinations;
  use Moose;
  has EndDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'EndDate');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'PageSize');
  has Reasons => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'Reason');
  has StartDate => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'StartDate');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSuppressedDestinations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v2/email/suppression/addresses');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SESv2::ListSuppressedDestinationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListSuppressedDestinations - Arguments for method ListSuppressedDestinations on L<Paws::SESv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSuppressedDestinations on the
L<Amazon Simple Email Service|Paws::SESv2> service. Use the attributes of this class
as arguments to method ListSuppressedDestinations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSuppressedDestinations.

=head1 SYNOPSIS

    my $email = Paws->service('SESv2');
    my $ListSuppressedDestinationsResponse = $email->ListSuppressedDestinations(
      EndDate   => '1970-01-01T01:00:00',    # OPTIONAL
      NextToken => 'MyNextToken',            # OPTIONAL
      PageSize  => 1,                        # OPTIONAL
      Reasons   => [
        'BOUNCE', ...                        # values: BOUNCE, COMPLAINT
      ],    # OPTIONAL
      StartDate => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSuppressedDestinationsResponse->NextToken;
    my $SuppressedDestinationSummaries =
      $ListSuppressedDestinationsResponse->SuppressedDestinationSummaries;

    # Returns a L<Paws::SESv2::ListSuppressedDestinationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/email/ListSuppressedDestinations>

=head1 ATTRIBUTES


=head2 EndDate => Str

Used to filter the list of suppressed email destinations so that it
only includes addresses that were added to the list before a specific
date. The date that you specify should be in Unix time format.



=head2 NextToken => Str

A token returned from a previous call to C<ListSuppressedDestinations>
to indicate the position in the list of suppressed email addresses.



=head2 PageSize => Int

The number of results to show in a single call to
C<ListSuppressedDestinations>. If the number of results is larger than
the number you specified in this parameter, then the response includes
a C<NextToken> element, which you can use to obtain additional results.



=head2 Reasons => ArrayRef[Str|Undef]

The factors that caused the email address to be added to .



=head2 StartDate => Str

Used to filter the list of suppressed email destinations so that it
only includes addresses that were added to the list after a specific
date. The date that you specify should be in Unix time format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSuppressedDestinations in L<Paws::SESv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

