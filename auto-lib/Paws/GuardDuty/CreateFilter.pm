
package Paws::GuardDuty::CreateFilter;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GuardDuty::Types qw/GuardDuty_FindingCriteria GuardDuty_TagMap/;
  has Action => (is => 'ro', isa => Str, predicate => 1);
  has ClientToken => (is => 'ro', isa => Str, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FindingCriteria => (is => 'ro', isa => GuardDuty_FindingCriteria, required => 1, predicate => 1);
  has Name => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Rank => (is => 'ro', isa => Int, predicate => 1);
  has Tags => (is => 'ro', isa => GuardDuty_TagMap, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateFilter');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/filter');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::CreateFilterResponse');

    sub params_map {
    our $Params_map ||= {
  'ParamInURI' => {
                    'DetectorId' => 'detectorId'
                  },
  'types' => {
               'DetectorId' => {
                                 'type' => 'Str'
                               },
               'Tags' => {
                           'type' => 'GuardDuty_TagMap',
                           'class' => 'Paws::GuardDuty::TagMap'
                         },
               'Action' => {
                             'type' => 'Str'
                           },
               'ClientToken' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Rank' => {
                           'type' => 'Int'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'FindingCriteria' => {
                                      'type' => 'GuardDuty_FindingCriteria',
                                      'class' => 'Paws::GuardDuty::FindingCriteria'
                                    }
             },
  'IsRequired' => {
                    'DetectorId' => 1,
                    'Name' => 1,
                    'FindingCriteria' => 1
                  },
  'NameInRequest' => {
                       'Description' => 'description',
                       'FindingCriteria' => 'findingCriteria',
                       'Tags' => 'tags',
                       'Action' => 'action',
                       'ClientToken' => 'clientToken',
                       'Name' => 'name',
                       'Rank' => 'rank'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreateFilter - Arguments for method CreateFilter on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFilter on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method CreateFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFilter.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $CreateFilterResponse = $guardduty->CreateFilter(
      DetectorId      => 'MyDetectorId',
      FindingCriteria => {
        Criterion => {
          'MyString' => {
            Eq     => [ 'MyString', ... ],    # OPTIONAL
            Equals => [ 'MyString', ... ],    # OPTIONAL
            GreaterThan        => 1,                      # OPTIONAL
            GreaterThanOrEqual => 1,                      # OPTIONAL
            Gt                 => 1,                      # OPTIONAL
            Gte                => 1,                      # OPTIONAL
            LessThan           => 1,                      # OPTIONAL
            LessThanOrEqual    => 1,                      # OPTIONAL
            Lt                 => 1,                      # OPTIONAL
            Lte                => 1,                      # OPTIONAL
            Neq                => [ 'MyString', ... ],    # OPTIONAL
            NotEquals          => [ 'MyString', ... ],    # OPTIONAL
          },
        },    # OPTIONAL
      },
      Name        => 'MyFilterName',
      Action      => 'NOOP',                   # OPTIONAL
      ClientToken => 'MyClientToken',          # OPTIONAL
      Description => 'MyFilterDescription',    # OPTIONAL
      Rank        => 1,                        # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Name = $CreateFilterResponse->Name;

    # Returns a L<Paws::GuardDuty::CreateFilterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/CreateFilter>

=head1 ATTRIBUTES


=head2 Action => Str

Specifies the action that is to be applied to the findings that match
the filter.

Valid values are: C<"NOOP">, C<"ARCHIVE">

=head2 ClientToken => Str

The idempotency token for the create request.



=head2 Description => Str

The description of the filter.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector of the GuardDuty account for which you
want to create a filter.



=head2 B<REQUIRED> FindingCriteria => GuardDuty_FindingCriteria

Represents the criteria to be used in the filter for querying findings.



=head2 B<REQUIRED> Name => Str

The name of the filter.



=head2 Rank => Int

Specifies the position of the filter in the list of current filters.
Also specifies the order in which this filter is applied to the
findings.



=head2 Tags => GuardDuty_TagMap

The tags to be added to a new filter resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFilter in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

