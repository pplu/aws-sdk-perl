# Generated from json/callargs_class.tt

package Paws::AlexaForBusiness::SearchSkillGroups;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_Filter AlexaForBusiness_Sort/;
  has Filters => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Filter], predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);
  has SortCriteria => (is => 'ro', isa => ArrayRef[AlexaForBusiness_Sort], predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'SearchSkillGroups');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::AlexaForBusiness::SearchSkillGroupsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Filters' => {
                              'class' => 'Paws::AlexaForBusiness::Filter',
                              'type' => 'ArrayRef[AlexaForBusiness_Filter]'
                            },
               'SortCriteria' => {
                                   'class' => 'Paws::AlexaForBusiness::Sort',
                                   'type' => 'ArrayRef[AlexaForBusiness_Sort]'
                                 },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::SearchSkillGroups - Arguments for method SearchSkillGroups on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchSkillGroups on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method SearchSkillGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchSkillGroups.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $SearchSkillGroupsResponse = $a4b->SearchSkillGroups(
      Filters => [
        {
          Key    => 'MyFilterKey',    # min: 1, max: 500
          Values => [
            'MyFilterValue', ...      # min: 1, max: 500
          ],                          # max: 50

        },
        ...
      ],                              # OPTIONAL
      MaxResults   => 1,              # OPTIONAL
      NextToken    => 'MyNextToken',  # OPTIONAL
      SortCriteria => [
        {
          Key   => 'MySortKey',       # min: 1, max: 500
          Value => 'ASC',             # values: ASC, DESC

        },
        ...
      ],                              # OPTIONAL
    );

    # Results:
    my $NextToken   = $SearchSkillGroupsResponse->NextToken;
    my $SkillGroups = $SearchSkillGroupsResponse->SkillGroups;
    my $TotalCount  = $SearchSkillGroupsResponse->TotalCount;

    # Returns a L<Paws::AlexaForBusiness::SearchSkillGroupsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/SearchSkillGroups>

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[AlexaForBusiness_Filter]

The filters to use to list a specified set of skill groups. The
supported filter key is SkillGroupName.



=head2 MaxResults => Int

The maximum number of results to include in the response. If more
results exist than the specified C<MaxResults> value, a token is
included in the response so that the remaining results can be
retrieved.



=head2 NextToken => Str

An optional token returned from a prior request. Use this token for
pagination of results from this action. If this parameter is specified,
the response includes only results beyond the token, up to the value
specified by C<MaxResults>. Required.



=head2 SortCriteria => ArrayRef[AlexaForBusiness_Sort]

The sort order to use in listing the specified set of skill groups. The
supported sort key is SkillGroupName.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchSkillGroups in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

