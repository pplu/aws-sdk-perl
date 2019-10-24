
package Paws::GuardDuty::ListFindings;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::GuardDuty::Types qw/GuardDuty_SortCriteria GuardDuty_FindingCriteria/;
  has DetectorId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has FindingCriteria => (is => 'ro', isa => GuardDuty_FindingCriteria, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SortCriteria => (is => 'ro', isa => GuardDuty_SortCriteria, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'ListFindings');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/detector/{detectorId}/findings');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::GuardDuty::ListFindingsResponse');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'SortCriteria' => {
                                   'class' => 'Paws::GuardDuty::SortCriteria',
                                   'type' => 'GuardDuty_SortCriteria'
                                 },
               'FindingCriteria' => {
                                      'class' => 'Paws::GuardDuty::FindingCriteria',
                                      'type' => 'GuardDuty_FindingCriteria'
                                    },
               'DetectorId' => {
                                 'type' => 'Str'
                               },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'ParamInURI' => {
                    'DetectorId' => 'detectorId'
                  },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'SortCriteria' => 'sortCriteria',
                       'FindingCriteria' => 'findingCriteria',
                       'MaxResults' => 'maxResults'
                     },
  'IsRequired' => {
                    'DetectorId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListFindings - Arguments for method ListFindings on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFindings on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method ListFindings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFindings.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $ListFindingsResponse = $guardduty->ListFindings(
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
      },    # OPTIONAL
      MaxResults   => 1,             # OPTIONAL
      NextToken    => 'MyString',    # OPTIONAL
      SortCriteria => {
        AttributeName => 'MyString',
        OrderBy       => 'ASC',        # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $FindingIds = $ListFindingsResponse->FindingIds;
    my $NextToken  = $ListFindingsResponse->NextToken;

    # Returns a L<Paws::GuardDuty::ListFindingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/ListFindings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector that specifies the GuardDuty service whose
findings you want to list.



=head2 FindingCriteria => GuardDuty_FindingCriteria

Represents the criteria used for querying findings.



=head2 MaxResults => Int

You can use this parameter to indicate the maximum number of items you
want in the response. The default value is 50. The maximum value is 50.



=head2 NextToken => Str

You can use this parameter when paginating results. Set the value of
this parameter to null on your first call to the list action. For
subsequent calls to the action fill nextToken in the request with the
value of NextToken from the previous response to continue listing data.



=head2 SortCriteria => GuardDuty_SortCriteria

Represents the criteria used for sorting findings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFindings in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

