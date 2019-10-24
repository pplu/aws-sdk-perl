
package Paws::Chime::ListPhoneNumbers;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Chime::Types qw//;
  has FilterName => (is => 'ro', isa => Str, predicate => 1);
  has FilterValue => (is => 'ro', isa => Str, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has ProductType => (is => 'ro', isa => Str, predicate => 1);
  has Status => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListPhoneNumbers');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/phone-numbers');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'GET');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Chime::ListPhoneNumbersResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'FilterValue' => {
                                  'type' => 'Str'
                                },
               'Status' => {
                             'type' => 'Str'
                           },
               'MaxResults' => {
                                 'type' => 'Int'
                               },
               'ProductType' => {
                                  'type' => 'Str'
                                },
               'FilterName' => {
                                 'type' => 'Str'
                               }
             },
  'ParamInQuery' => {
                      'NextToken' => 'next-token',
                      'FilterValue' => 'filter-value',
                      'Status' => 'status',
                      'MaxResults' => 'max-results',
                      'ProductType' => 'product-type',
                      'FilterName' => 'filter-name'
                    }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListPhoneNumbers - Arguments for method ListPhoneNumbers on L<Paws::Chime>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPhoneNumbers on the
L<Amazon Chime|Paws::Chime> service. Use the attributes of this class
as arguments to method ListPhoneNumbers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPhoneNumbers.

=head1 SYNOPSIS

    my $chime = Paws->service('Chime');
    my $ListPhoneNumbersResponse = $chime->ListPhoneNumbers(
      FilterName  => 'AccountId',            # OPTIONAL
      FilterValue => 'MyString',             # OPTIONAL
      MaxResults  => 1,                      # OPTIONAL
      NextToken   => 'MyString',             # OPTIONAL
      ProductType => 'BusinessCalling',      # OPTIONAL
      Status      => 'AcquireInProgress',    # OPTIONAL
    );

    # Results:
    my $NextToken    = $ListPhoneNumbersResponse->NextToken;
    my $PhoneNumbers = $ListPhoneNumbersResponse->PhoneNumbers;

    # Returns a L<Paws::Chime::ListPhoneNumbersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chime/ListPhoneNumbers>

=head1 ATTRIBUTES


=head2 FilterName => Str

The filter to use to limit the number of results.

Valid values are: C<"AccountId">, C<"UserId">, C<"VoiceConnectorId">

=head2 FilterValue => Str

The value to use for the filter.



=head2 MaxResults => Int

The maximum number of results to return in a single call.



=head2 NextToken => Str

The token to use to retrieve the next page of results.



=head2 ProductType => Str

The phone number product type.

Valid values are: C<"BusinessCalling">, C<"VoiceConnector">

=head2 Status => Str

The phone number status.

Valid values are: C<"AcquireInProgress">, C<"AcquireFailed">, C<"Unassigned">, C<"Assigned">, C<"ReleaseInProgress">, C<"DeleteInProgress">, C<"ReleaseFailed">, C<"DeleteFailed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPhoneNumbers in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

