# Generated from json/callargs_class.tt

package Paws::Support::DescribeCommunications;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Support::Types qw//;
  has AfterTime => (is => 'ro', isa => Str, predicate => 1);
  has BeforeTime => (is => 'ro', isa => Str, predicate => 1);
  has CaseId => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has MaxResults => (is => 'ro', isa => Int, predicate => 1);
  has NextToken => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'DescribeCommunications');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Support::DescribeCommunicationsResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'CaseId' => {
                             'type' => 'Str'
                           },
               'AfterTime' => {
                                'type' => 'Str'
                              },
               'BeforeTime' => {
                                 'type' => 'Str'
                               },
               'MaxResults' => {
                                 'type' => 'Int'
                               }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'CaseId' => 'caseId',
                       'AfterTime' => 'afterTime',
                       'BeforeTime' => 'beforeTime',
                       'MaxResults' => 'maxResults'
                     },
  'IsRequired' => {
                    'CaseId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeCommunications - Arguments for method DescribeCommunications on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCommunications on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeCommunications.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCommunications.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeCommunicationsResponse = $support->DescribeCommunications(
      CaseId     => 'MyCaseId',
      AfterTime  => 'MyAfterTime',     # OPTIONAL
      BeforeTime => 'MyBeforeTime',    # OPTIONAL
      MaxResults => 1,                 # OPTIONAL
      NextToken  => 'MyNextToken',     # OPTIONAL
    );

    # Results:
    my $Communications = $DescribeCommunicationsResponse->Communications;
    my $NextToken      = $DescribeCommunicationsResponse->NextToken;

    # Returns a L<Paws::Support::DescribeCommunicationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeCommunications>

=head1 ATTRIBUTES


=head2 AfterTime => Str

The start date for a filtered date search on support case
communications. Case communications are available for 12 months after
creation.



=head2 BeforeTime => Str

The end date for a filtered date search on support case communications.
Case communications are available for 12 months after creation.



=head2 B<REQUIRED> CaseId => Str

The AWS Support case ID requested or returned in the call. The case ID
is an alphanumeric string formatted as shown in this example:
case-I<12345678910-2013-c4c1d2bf33c5cf47>



=head2 MaxResults => Int

The maximum number of results to return before paginating.



=head2 NextToken => Str

A resumption point for pagination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCommunications in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

