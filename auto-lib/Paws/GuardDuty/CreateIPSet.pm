
package Paws::GuardDuty::CreateIPSet;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::GuardDuty::Types qw/GuardDuty_TagMap/;
  has Activate => (is => 'ro', isa => Bool, required => 1, predicate => 1);
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Format => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Location => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => GuardDuty_TagMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateIPSet');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/ipset');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::CreateIPSetResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'DetectorId' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'class' => 'Paws::GuardDuty::TagMap',
                           'type' => 'GuardDuty_TagMap'
                         },
               'Location' => {
                               'type' => 'Str'
                             },
               'Name' => {
                           'type' => 'Str'
                         },
               'Format' => {
                             'type' => 'Str'
                           },
               'Activate' => {
                               'type' => 'Bool'
                             }
             },
  'ParamInURI' => {
                    'DetectorId' => 'detectorId'
                  },
  'NameInRequest' => {
                       'ClientToken' => 'clientToken',
                       'Tags' => 'tags',
                       'Location' => 'location',
                       'Name' => 'name',
                       'Format' => 'format',
                       'Activate' => 'activate'
                     },
  'IsRequired' => {
                    'DetectorId' => 1,
                    'Location' => 1,
                    'Name' => 1,
                    'Format' => 1,
                    'Activate' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateIPSet - Arguments for method CreateIPSet on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIPSet on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateIPSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIPSet.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateIPSetResponse = $guardduty->CreateIPSet(
      Activate    => 1,
      DetectorId  => 'MyDetectorId',
      Format      => 'TXT',
      Location    => 'MyLocation',
      Name        => 'MyName',
      ClientToken => 'MyClientToken',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $IpSetId = $CreateIPSetResponse->IpSetId;

    # Returns a L<Paws::GuardDuty::CreateIPSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateIPSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Activate => Bool

A boolean value that indicates whether GuardDuty is to start using the
uploaded IPSet.



=head2 ClientToken => Str

The idempotency token for the create request.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account for which you
want to create an IPSet.



=head2 B<REQUIRED> Format => Str

The format of the file that contains the IPSet.

Valid values are: C<"TXT">, C<"STIX">, C<"OTX_CSV">, C<"ALIEN_VAULT">, C<"PROOF_POINT">, C<"FIRE_EYE">

=head2 B<REQUIRED> Location => Str

The URI of the file that contains the IPSet. For example
(https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)



=head2 B<REQUIRED> Name => Str

The user friendly name to identify the IPSet. This name is displayed in
all findings that are triggered by activity that involves IP addresses
included in this IPSet.



=head2 Tags => GuardDuty_TagMap

The tags to be added to a new IP set resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIPSet in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

