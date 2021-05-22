
package Paws::Connect::ListPhoneNumbers;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has PhoneNumberCountryCodes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'phoneNumberCountryCodes');
  has PhoneNumberTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'phoneNumberTypes');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPhoneNumbers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/phone-numbers-summary/{InstanceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Connect::ListPhoneNumbersResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListPhoneNumbers - Arguments for method ListPhoneNumbers on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPhoneNumbers on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method ListPhoneNumbers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPhoneNumbers.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    my $ListPhoneNumbersResponse = $connect->ListPhoneNumbers(
      InstanceId              => 'MyInstanceId',
      MaxResults              => 1,                # OPTIONAL
      NextToken               => 'MyNextToken',    # OPTIONAL
      PhoneNumberCountryCodes => [
        'AF',
        ... # values: AF, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BA, BW, BR, IO, VG, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CK, CR, HR, CU, CW, CY, CZ, CD, DK, DJ, DM, DO, TL, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, PF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GU, GT, GG, GN, GW, GY, HT, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, CI, JM, JP, JE, JO, KZ, KE, KI, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, AN, NC, NZ, NI, NE, NG, NU, KP, MP, NO, OM, PK, PW, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, CG, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, KR, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TG, TK, TO, TT, TN, TR, TM, TC, TV, VI, UG, UA, AE, GB, US, UY, UZ, VU, VA, VE, VN, WF, EH, YE, ZM, ZW
      ],    # OPTIONAL
      PhoneNumberTypes => [
        'TOLL_FREE', ...    # values: TOLL_FREE, DID
      ],                    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListPhoneNumbersResponse->NextToken;
    my $PhoneNumberSummaryList =
      $ListPhoneNumbersResponse->PhoneNumberSummaryList;

    # Returns a L<Paws::Connect::ListPhoneNumbersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/ListPhoneNumbers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance.



=head2 MaxResults => Int

The maximum number of results to return per page.



=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.



=head2 PhoneNumberCountryCodes => ArrayRef[Str|Undef]

The ISO country code.



=head2 PhoneNumberTypes => ArrayRef[Str|Undef]

The type of phone number.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPhoneNumbers in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

