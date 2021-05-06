
package Paws::WAFRegional::UpdateGeoMatchSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has GeoMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::GeoMatchSetUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGeoMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateGeoMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateGeoMatchSet - Arguments for method UpdateGeoMatchSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGeoMatchSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method UpdateGeoMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGeoMatchSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    my $UpdateGeoMatchSetResponse = $waf -regional->UpdateGeoMatchSet(
      ChangeToken   => 'MyChangeToken',
      GeoMatchSetId => 'MyResourceId',
      Updates       => [
        {
          Action             => 'INSERT',    # values: INSERT, DELETE
          GeoMatchConstraint => {
            Type  => 'Country',              # values: Country
            Value => 'AF'
            , # values: AF, AX, AL, DZ, AS, AD, AO, AI, AQ, AG, AR, AM, AW, AU, AT, AZ, BS, BH, BD, BB, BY, BE, BZ, BJ, BM, BT, BO, BQ, BA, BW, BV, BR, IO, BN, BG, BF, BI, KH, CM, CA, CV, KY, CF, TD, CL, CN, CX, CC, CO, KM, CG, CD, CK, CR, CI, HR, CU, CW, CY, CZ, DK, DJ, DM, DO, EC, EG, SV, GQ, ER, EE, ET, FK, FO, FJ, FI, FR, GF, PF, TF, GA, GM, GE, DE, GH, GI, GR, GL, GD, GP, GU, GT, GG, GN, GW, GY, HT, HM, VA, HN, HK, HU, IS, IN, ID, IR, IQ, IE, IM, IL, IT, JM, JP, JE, JO, KZ, KE, KI, KP, KR, KW, KG, LA, LV, LB, LS, LR, LY, LI, LT, LU, MO, MK, MG, MW, MY, MV, ML, MT, MH, MQ, MR, MU, YT, MX, FM, MD, MC, MN, ME, MS, MA, MZ, MM, NA, NR, NP, NL, NC, NZ, NI, NE, NG, NU, NF, MP, NO, OM, PK, PW, PS, PA, PG, PY, PE, PH, PN, PL, PT, PR, QA, RE, RO, RU, RW, BL, SH, KN, LC, MF, PM, VC, WS, SM, ST, SA, SN, RS, SC, SL, SG, SX, SK, SI, SB, SO, ZA, GS, SS, ES, LK, SD, SR, SJ, SZ, SE, CH, SY, TW, TJ, TZ, TH, TL, TG, TK, TO, TT, TN, TR, TM, TC, TV, UG, UA, AE, GB, US, UM, UY, UZ, VU, VE, VN, VG, VI, WF, EH, YE, ZM, ZW

          },

        },
        ...
      ],

    );

    # Results:
    my $ChangeToken = $UpdateGeoMatchSetResponse->ChangeToken;

    # Returns a L<Paws::WAFRegional::UpdateGeoMatchSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/UpdateGeoMatchSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> GeoMatchSetId => Str

The C<GeoMatchSetId> of the GeoMatchSet that you want to update.
C<GeoMatchSetId> is returned by CreateGeoMatchSet and by
ListGeoMatchSets.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::GeoMatchSetUpdate>]

An array of C<GeoMatchSetUpdate> objects that you want to insert into
or delete from an GeoMatchSet. For more information, see the applicable
data types:

=over

=item *

GeoMatchSetUpdate: Contains C<Action> and C<GeoMatchConstraint>

=item *

GeoMatchConstraint: Contains C<Type> and C<Value>

You can have only one C<Type> and C<Value> per C<GeoMatchConstraint>.
To add multiple countries, include multiple C<GeoMatchSetUpdate>
objects in your request.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGeoMatchSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

