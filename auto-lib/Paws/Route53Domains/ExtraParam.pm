package Paws::Route53Domains::ExtraParam;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::ExtraParam

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Route53Domains::ExtraParam object:

  $service_obj->Method(Att1 => { Name => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Route53Domains::ExtraParam object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

ExtraParam includes the following elements.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  Name of the additional parameter required by the top-level domain.

Type: String

Default: None

Valid values: C<DUNS_NUMBER> | C<BRAND_NUMBER> | C<BIRTH_DEPARTMENT> |
C<BIRTH_DATE_IN_YYYY_MM_DD> | C<BIRTH_COUNTRY> | C<BIRTH_CITY> |
C<DOCUMENT_NUMBER> | C<AU_ID_NUMBER> | C<AU_ID_TYPE> | C<CA_LEGAL_TYPE>
| C<ES_IDENTIFICATION> | C<ES_IDENTIFICATION_TYPE> | C<ES_LEGAL_FORM> |
C<FI_BUSINESS_NUMBER> | C<FI_ID_NUMBER> | C<IT_PIN> |
C<RU_PASSPORT_DATA> | C<SE_ID_NUMBER> | C<SG_ID_NUMBER> | C<VAT_NUMBER>

Parent: C<ExtraParams>

Required: Yes


=head2 B<REQUIRED> Value => Str

  Values corresponding to the additional parameter names required by some
top-level domains.

Type: String

Default: None

Constraints: Maximum 2048 characters.

Parent: C<ExtraParams>

Required: Yes



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

