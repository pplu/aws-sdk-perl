
package Paws::Support::DescribeCases;
  use Moose;
  has AfterTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'afterTime' );
  has BeforeTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'beforeTime' );
  has CaseIdList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'caseIdList' );
  has DisplayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayId' );
  has IncludeCommunications => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeCommunications' );
  has IncludeResolvedCases => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeResolvedCases' );
  has Language => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'language' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeCasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Support::DescribeCases - Arguments for method DescribeCases on L<Paws::Support>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCases on the
L<AWS Support|Paws::Support> service. Use the attributes of this class
as arguments to method DescribeCases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCases.

=head1 SYNOPSIS

    my $support = Paws->service('Support');
    my $DescribeCasesResponse = $support->DescribeCases(
      AfterTime             => 'MyAfterTime',          # OPTIONAL
      BeforeTime            => 'MyBeforeTime',         # OPTIONAL
      CaseIdList            => [ 'MyCaseId', ... ],    # OPTIONAL
      DisplayId             => 'MyDisplayId',          # OPTIONAL
      IncludeCommunications => 1,                      # OPTIONAL
      IncludeResolvedCases  => 1,                      # OPTIONAL
      Language              => 'MyLanguage',           # OPTIONAL
      MaxResults            => 1,                      # OPTIONAL
      NextToken             => 'MyNextToken',          # OPTIONAL
    );

    # Results:
    my $Cases     = $DescribeCasesResponse->Cases;
    my $NextToken = $DescribeCasesResponse->NextToken;

    # Returns a L<Paws::Support::DescribeCasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/support/DescribeCases>

=head1 ATTRIBUTES


=head2 AfterTime => Str

The start date for a filtered date search on support case
communications. Case communications are available for 12 months after
creation.



=head2 BeforeTime => Str

The end date for a filtered date search on support case communications.
Case communications are available for 12 months after creation.



=head2 CaseIdList => ArrayRef[Str|Undef]

A list of ID numbers of the support cases you want returned. The
maximum number of cases is 100.



=head2 DisplayId => Str

The ID displayed for a case in the AWS Support Center user interface.



=head2 IncludeCommunications => Bool

Specifies whether communications should be included in the
DescribeCases results. The default is I<true>.



=head2 IncludeResolvedCases => Bool

Specifies whether resolved support cases should be included in the
DescribeCases results. The default is I<false>.



=head2 Language => Str

The ISO 639-1 code for the language in which AWS provides support. AWS
Support currently supports English ("en") and Japanese ("ja"). Language
parameters must be passed explicitly for operations that take them.



=head2 MaxResults => Int

The maximum number of results to return before paginating.



=head2 NextToken => Str

A resumption point for pagination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCases in L<Paws::Support>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

