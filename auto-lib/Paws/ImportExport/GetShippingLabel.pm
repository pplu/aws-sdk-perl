# Generated from callargs_class.tt

package Paws::ImportExport::GetShippingLabel;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ImportExport::Types qw//;
  has APIVersion => (is => 'ro', isa => Str, predicate => 1);
  has City => (is => 'ro', isa => Str, predicate => 1);
  has Company => (is => 'ro', isa => Str, predicate => 1);
  has Country => (is => 'ro', isa => Str, predicate => 1);
  has JobIds => (is => 'ro', isa => ArrayRef[Str|Undef], required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, predicate => 1);
  has PhoneNumber => (is => 'ro', isa => Str, predicate => 1);
  has PostalCode => (is => 'ro', isa => Str, predicate => 1);
  has StateOrProvince => (is => 'ro', isa => Str, predicate => 1);
  has Street1 => (is => 'ro', isa => Str, predicate => 1);
  has Street2 => (is => 'ro', isa => Str, predicate => 1);
  has Street3 => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'GetShippingLabel');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::ImportExport::GetShippingLabelOutput');
  class_has _result_key => (isa => Str, is => 'ro', default => 'GetShippingLabelResult');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Street2' => {
                              'type' => 'Str'
                            },
               'PostalCode' => {
                                 'type' => 'Str'
                               },
               'Street3' => {
                              'type' => 'Str'
                            },
               'JobIds' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'PhoneNumber' => {
                                  'type' => 'Str'
                                },
               'APIVersion' => {
                                 'type' => 'Str'
                               },
               'City' => {
                           'type' => 'Str'
                         },
               'Country' => {
                              'type' => 'Str'
                            },
               'Street1' => {
                              'type' => 'Str'
                            },
               'Name' => {
                           'type' => 'Str'
                         },
               'StateOrProvince' => {
                                      'type' => 'Str'
                                    },
               'Company' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'Street2' => 'street2',
                       'PostalCode' => 'postalCode',
                       'Street3' => 'street3',
                       'JobIds' => 'jobIds',
                       'PhoneNumber' => 'phoneNumber',
                       'City' => 'city',
                       'Country' => 'country',
                       'Street1' => 'street1',
                       'Name' => 'name',
                       'Company' => 'company',
                       'StateOrProvince' => 'stateOrProvince'
                     },
  'IsRequired' => {
                    'JobIds' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::GetShippingLabel - Arguments for method GetShippingLabel on L<Paws::ImportExport>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetShippingLabel on the
L<AWS ImportE<sol>Export|Paws::ImportExport> service. Use the attributes of this class
as arguments to method GetShippingLabel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetShippingLabel.

=head1 SYNOPSIS

    my $importexport = Paws->service('ImportExport');
    my $GetShippingLabelOutput = $importexport->GetShippingLabel(
      JobIds          => [ 'MyGenericString', ... ],
      APIVersion      => 'MyAPIVersion',               # OPTIONAL
      City            => 'Mycity',                     # OPTIONAL
      Company         => 'Mycompany',                  # OPTIONAL
      Country         => 'Mycountry',                  # OPTIONAL
      Name            => 'Myname',                     # OPTIONAL
      PhoneNumber     => 'MyphoneNumber',              # OPTIONAL
      PostalCode      => 'MypostalCode',               # OPTIONAL
      StateOrProvince => 'MystateOrProvince',          # OPTIONAL
      Street1         => 'Mystreet1',                  # OPTIONAL
      Street2         => 'Mystreet2',                  # OPTIONAL
      Street3         => 'Mystreet3',                  # OPTIONAL
    );

    # Results:
    my $ShippingLabelURL = $GetShippingLabelOutput->ShippingLabelURL;
    my $Warning          = $GetShippingLabelOutput->Warning;

    # Returns a L<Paws::ImportExport::GetShippingLabelOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/importexport/GetShippingLabel>

=head1 ATTRIBUTES


=head2 APIVersion => Str





=head2 City => Str





=head2 Company => Str





=head2 Country => Str





=head2 B<REQUIRED> JobIds => ArrayRef[Str|Undef]





=head2 Name => Str





=head2 PhoneNumber => Str





=head2 PostalCode => Str





=head2 StateOrProvince => Str





=head2 Street1 => Str





=head2 Street2 => Str





=head2 Street3 => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetShippingLabel in L<Paws::ImportExport>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

